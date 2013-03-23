# == Schema Information
#
# Table name: seats
#
#  id          :integer          not null, primary key
#  zeppelin_id :integer
#  row         :integer
#  column      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

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

  it 'gets created by a Zeppelin' do
    zeppelin = Zeppelin.create(:number_of_rows => 2, :number_of_columns => 2)
    expect(zeppelin.seats.count).to eq 4
  end

end
