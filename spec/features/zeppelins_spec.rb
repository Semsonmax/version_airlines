require 'spec_helper'

describe Zeppelin do

  describe 'GET /zeppelins' do
    it 'displays a zeppelins in the list' do
      zeppelin = FactoryGirl.create(:zeppelin)
      visit zeppelins_path
      page.has_content?('The Lord Grantham')
    end

  end
end