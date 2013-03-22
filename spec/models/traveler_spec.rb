# == Schema Information
#
# Table name: travelers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

require 'spec_helper'

describe Traveler do
  describe '.new' do
    it 'creates an instance of a traveler' do
      traveler = Traveler.new
      expect(traveler).to be_an_instance_of(Traveler)
    end
  end

  describe '.create' do
    it 'has an id' do
      traveler = Traveler.create(name: 'ferdinand', email: 'ferdinand@gmail.com', password: 'a', password_confirmation: 'a')
      expect(traveler.id).to_not be nil
    end
    it 'fails validation' do
      traveler = Traveler.create
      expect(traveler.id).to be nil
    end
  end
end
