require 'spec_helper'


describe Voyage do
  let(:voy) {FactoryGirl.create(:voyage)}
  let(:book) {FactoryGirl.create(:booking)}
  let(:trvlr) {FactoryGirl.create(:traveler)}
  let(:seat) {FactoryGirl.create(:seat)}
  let(:zep) {FactoryGirl.create(:zeppelin)}
  describe '.create' do
    it 'is a Voyage object' do
      expect(voy).to be_an_instance_of(Voyage)
    end
  end

  describe '#metadata' do
    it 'has voyage properties' do
      expect(voy.code).to eq 'BNY120'
      expect(voy.airfield_depart).to eq 'Berlin'
      expect(voy.airfield_arrive).to eq 'New York'
      expect(voy.voyage_date) == '1900-04-01'
    end
  end

  describe '#travelers' do
    it 'has many travelers through bookings' do
      zep.create_seats
      seat = Seat.last
      booking = Booking.create(:traveler=>trvlr,:seat=>seat, :voyage=>voy)
      expect(voy.bookings.first).to eq book
    end
  end
end
