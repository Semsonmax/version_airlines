require 'spec_helper'
describe 'Session' do

  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login')
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
      page.should have_link('Logout')
      visit root_path
      page.should_not have_link('Login')
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

end