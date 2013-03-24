# == Schema Information
#
# Table name: voyages
#
#  id              :integer          not null, primary key
#  code            :string(255)
#  airfield_depart :string(255)
#  airfield_arrive :string(255)
#  voyage_date     :date
#  zeppelin_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  arrive_lat      :float
#  arrive_long     :float
#  depart_lat      :float
#  depart_long     :float
#

require 'spec_helper'


describe Voyage do
  let(:voy) {FactoryGirl.create(:voyage)}
  let(:trvlr) {FactoryGirl.create(:traveler)}
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
    it 'doesn\'t exist without a Zeppelin object' do
      v = Voyage.create
      expect(v.id).to be nil
    end
  end

  describe '#travelers' do
    it 'has many travelers through bookings' do
      zep.create_seats
      seat = Seat.last
      booking = Booking.new
      booking.seat = seat
      booking.traveler = trvlr
      booking.voyage = voy
      booking.save
      expect(voy.travelers.first).to eq trvlr
    end
  end
  describe '#seats' do
    it 'has many seats through bookings' do
      zep.create_seats
      seat = Seat.last
      booking = Booking.new
      booking.seat = seat
      booking.traveler = trvlr
      booking.voyage = voy
      booking.save
      expect(voy.seats.first).to eq seat
    end
  end

  describe '#get_arrival_coords' do
    it 'gets the coords of the arrival location' do
      expect(voy.get_arrive_coords).to_not be nil
    end
  end






end
