require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper
describe 'Register' do

  describe 'GET /' do
    it 'displays register link' do
      visit root_path
      page.should have_link('Register')
    end

    it 'displays login form', :js => true do
      visit root_path
      click_link('Register')
      page.should have_button('Create Traveler')
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
    it 'registers a new user', :js => true do
      visit root_path
      click_link('Register')
      fill_in('Name', :with => 'bart')
      fill_in('Email', :with => 'bart@gmail.com')
      fill_in('traveler_password', :with => 'a')
      fill_in('traveler_password_confirmation', :with => 'a')
      click_button('Create Traveler')
      click_link('Login')
      fill_in('Email', :with => 'bart@gmail.com')
      fill_in('Password', :with => 'a')
      click_button('Start')
      page.should_not have_link('Login')
      page.should_not have_link('Register')
      page.should have_link('Logout')
    end

    it 'does not create a user email if it fails validation', :js => true do
      visit root_path
      click_link('Register')
      fill_in('Name', :with => 'bart')
      fill_in('traveler_password', :with => 'a')
      fill_in('traveler_password_confirmation', :with => 'a')
      click_button('Create Traveler')
      click_link('Login')
      fill_in('Email', :with => 'bart@gmail.com')
      fill_in('Password', :with => 'a')
      click_button('Start')
      page.should have_link('Login')
      page.should have_link('Register')
      page.should_not have_link('Logout')
    end

    it 'does not create a user password if it fails validation', :js => true do
      visit root_path
      click_link('Register')
      fill_in('Name', :with => 'bart')
      fill_in('Email', :with => 'bart@gmail.com')
      fill_in('traveler_password_confirmation', :with => 'a')
      click_button('Create Traveler')
      click_link('Login')
      fill_in('Email', :with => 'bart@gmail.com')
      fill_in('Password', :with => 'a')
      click_button('Start')
      page.should have_link('Login')
      page.should have_link('Register')
      page.should_not have_link('Logout')
    end

    it 'does not create a user password if it fails validation', :js => true do
      visit root_path
      click_link('Register')
      fill_in('Name', :with => 'bart')
      fill_in('Email', :with => 'bart@gmail.com')
      fill_in('traveler_password', :with => 'a')
      click_button('Create Traveler')
      click_link('Login')
      fill_in('Email', :with => 'bart@gmail.com')
      fill_in('Password', :with => 'a')
      click_button('Start')
      page.should have_link('Login')
      page.should have_link('Register')
      page.should_not have_link('Logout')
    end
  #   let(:traveler) {FactoryGirl.create(:traveler)}
  #   let(:admin_traveler) {FactoryGirl.create(:admin_traveler)}

  #   it 'logs the traveler into the system if credentials are correct', :js => true do
  #     login_to_system(traveler)
  #     page.should_not have_button('Start')
  #     page.should_not have_link('Login')
  #     page.should_not have_link('Register')
  #     page.should have_link('Logout')
  #     visit root_path
  #     page.should_not have_link('Login')
  #     page.should_not have_link('Register')
  #     page.should have_link('Logout')
  #   end

  #   it 'logs the admin into the system as an admin if credentials are correct', :js => true do
  #     login_to_system(admin_traveler)
  #     page.should have_link('Zeppelins')
  #     page.should have_link('Voyages')
  #     visit root_path
  #     page.should have_link('Zeppelins')
  #     page.should have_link('Voyages')
  #   end

  #   it 'logs the traveler into the system as a traveler if credentials are correct', :js => true do
  #     login_to_system(traveler)
  #     page.should have_link('My Voyages')
  #     page.should have_link('Find Voyages')
  #     visit root_path
  #     page.should have_link('My Voyages')
  #     page.should have_link('Find Voyages')
  #   end

  #   it 'does not log the traveler into the system if credentials are incorrect', :js => true do
  #     visit root_path
  #     click_link('Login')
  #     fill_in('Email', :with => traveler.email)
  #     fill_in('Password', :with => 'b')
  #     click_button('Start')
  #     page.should have_button('Start')
  #   end

  end

  # describe 'DELETE /login' do
  #   it 'logs the user off the system', :js => true do
  #     traveler = FactoryGirl.create(:traveler)
  #     login_to_system(traveler)
  #     click_link('Logout')
  #     page.should_not have_link('Logout')
  #     page.should have_link('Register')
  #     page.should have_link('Login')
  #     visit root_path
  #     page.should_not have_link('Logout')
  #     page.should have_link('Register')
  #     page.should have_link('Login')
  #   end
  # end

end