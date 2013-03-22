require 'spec_helper'


describe Zeppelin do

  describe '.new' do
    let(:zep) {Zeppelin.create(:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)}

    it 'creates a Zeppelin object' do
      zep = Zeppelin.new(:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)
      expect(zep).to be_an_instance_of(Zeppelin)
    end
  end

  describe '.create' do
    it 'creates an Zeppelin record in the db' do
      zep = Zeppelin.create(:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)
      expect(zep.id).to_not be nil
    end
  end

  describe '#create_seats' do
    it 'creates seats' do
      zep.create_seats
      expect(zep.seats).to_not eq nil
    end

    it 'verifies correct number of seats indicated by Zeppelin object' do
      zep.create_seats
      expect(zep.seats).to eq(zep.rows * zep.columns)
    end

    it 'has an array of Seat objects' do
      zep.create_seats
      expect(zep.seats.first).to be_an_instance_of(Seat)
    end

  end



end
