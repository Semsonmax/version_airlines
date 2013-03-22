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
  let(:traveler) { Traveler.create(name: 'ferdinand', email: 'ferdinand@gmail.com', password: 'a', password_confirmation: 'a') }
  let(:voyage) { Voyage.create(:code=>'101',:airfield_depart=>'NYC',:airfield_arrive=>'LON',:voyage_date=>'4/11/2011') }
  let(:seat) { Seat.create(:row => 2, :column => 2) }
  let(:booking) { Booking.create(:traveler => traveler, :voyage => voyage, :seat => seat) }

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
    it 'has an array of Bookings objects' do
      traveler.bookings << booking
      expect(traveler.bookings.first).to eq booking
    end
  end
end
