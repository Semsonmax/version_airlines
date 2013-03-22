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


end