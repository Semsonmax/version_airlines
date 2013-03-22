require 'spec_helper'

describe Seat do
  describe '.new' do
    it 'creates an instance of a seat' do
      seat = Seat.new
      expect(seat).to be_an_instance_of(Seat)
    end
  end

  it 'cannot exist without a zeppelin' do
    seat = Seat.create()
    expect(seat.id).to be nil
  end
end
