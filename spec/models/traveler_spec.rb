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
  let(:voyage) {FactoryGirl.create(:voyage)}
  let(:traveler) {FactoryGirl.create(:traveler)}
  let(:zeppelin) {FactoryGirl.create(:zeppelin)}

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

  describe '#bookings' do
    it 'has an array of Booking objects' do
      zeppelin.create_seats
      seat = Seat.first
      booking = Booking.create(:traveler_id => traveler.id, :voyage_id => voyage.id, :seat_id => seat.id)
      expect(booking).to be_an_instance_of(Booking)
      traveler.bookings << booking
      expect(traveler.bookings.first).to eq booking
    end
  end

  describe '#voyages' do
    it 'has many voyages through bookings' do
      zeppelin.create_seats
      seat = Seat.last
      booking = Booking.new
      booking.seat = seat
      booking.traveler = traveler
      booking.voyage = voyage
      booking.save
      expect(traveler.voyages.first).to eq voyage
    end
  end

  describe '#seats' do
    it 'has many seats through bookings' do
      zeppelin.create_seats
      seat = Seat.last
      booking = Booking.new
      booking.seat = seat
      booking.traveler = traveler
      booking.voyage = voyage
      booking.save
      expect(traveler.seats.first).to eq seat
    end
  end
end
