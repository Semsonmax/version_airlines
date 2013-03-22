require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'Voyages' do
  before(:each) do
    visit root_path
    admin = FactoryGirl.create(:admin_traveler)
    login_to_system(admin)
  end

  describe 'GET /voyages' do
    it 'displays the New Voyage button', :js=>true do
      click_link('Voyages')
      click_link('New Voyage')
    end
  end

  describe 'GET /voyages/new' do
    it 'displays the New Voyage form', :js=>true do
      click_link('Voyages')
      click_link('New Voyage')
      page.should have_button('Create Voyage')
    end
  end


end