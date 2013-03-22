# == Schema Information
#
# Table name: bookings
#
#  id          :integer          not null, primary key
#  traveler_id :integer
#  seat_id     :integer
#  voyage_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Booking do
  describe '.new' do
    it 'creats an instance of a seat' do
      booking = Booking.new
      expect(booking).to be_an_instance_of(Booking)
    end

    it 'does not get created if seat field missing' do
      # traveler = FactoryGirl.create(:traveler)
      # voyage = FactoryGirl.create(:voyage)
      # Booking.create(voyage => voyage, traveler => traveler )
      # expect(booking.id).to be nil
    end
  end
end
