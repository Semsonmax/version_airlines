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
  describe '.create' do
    it 'creates an instance of a booking' do
      traveler = FactoryGirl.create(:traveler)
      zeppelin = FactoryGirl.create(:zeppelin)
      voyage = FactoryGirl.create(:voyage)
      zeppelin.create_seats
      seat = Seat.first
      booking = Booking.create(:traveler_id => traveler.id, :voyage_id => voyage.id, :seat_id =>seat.id)
      expect(booking).to be_an_instance_of(Booking)
    end

    it 'does not get created if seat field missing' do
      traveler = FactoryGirl.create(:traveler)
      voyage = FactoryGirl.create(:voyage)
      booking = Booking.new
      booking.voyage = voyage
      booking.traveler = traveler
      booking.save
      expect(booking.id).to be nil
    end
  end
end