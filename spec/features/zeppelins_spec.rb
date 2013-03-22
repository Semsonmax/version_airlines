require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe Zeppelin do

  describe 'GET /zeppelins' do
    it 'displays a zeppelin in the list', :js => true do
      zeppelin = FactoryGirl.create(:zeppelin)
      traveler = FactoryGirl.create(:traveler)
      visit root_path
      login_to_system(traveler)
      visit zeppelins_path
      page.has_content?('The Lord Grantham')
    end

    it 'it does not display new zeppelin form to not logged in user', :js => true do
      visit zeppelins_path
      page.should_not have_button('Create Zeppelin')
    end
  end
end