require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper
describe 'Session' do

  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login')
      page.should have_link('Register')
    end

    it 'displays login form', :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Start')
    end
  end

  describe 'JS cancel_login_form()' do
    it 'removes the login form', :js => true do
      visit root_path
      click_link('Login')
      click_link('Cancel')
      page.should_not have_button('Start')
    end
  end

  describe 'POST /login' do
    let(:traveler) {FactoryGirl.create(:traveler)}

    it 'logs the traveler into the system if credentials are correct', :js => true do
      login_to_system(traveler)
      page.should_not have_button('Start')
      page.should_not have_link('Login')
      page.should_not have_link('Register')
      page.should have_link('Logout')
      visit root_path
      page.should_not have_link('Login')
      page.should_not have_link('Register')
      page.should have_link('Logout')
    end

    it 'does not log the traveler into the system if credentials are incorrect', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => traveler.email)
      fill_in('Password', :with => 'b')
      click_button('Start')
      page.should have_button('Start')
    end

  end

  describe 'DELETE /login' do
    it 'logs the user off the system', :js => true do
      traveler = FactoryGirl.create(:traveler)
      login_to_system(traveler)
      click_link('Logout')
      expect(page.has_link?('Logout')).to be false
      page.should have_link('Register')
      page.should have_link('Login')
      visit root_path
      expect(page.has_link?('Logout')).to be false
      page.should have_link('Register')
      page.should have_link('Login')
    end
  end

end