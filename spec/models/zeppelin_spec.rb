# == Schema Information
#
# Table name: zeppelins
#
#  id                :integer          not null, primary key
#  style             :string(255)
#  number_of_rows    :integer
#  number_of_columns :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  name              :string(255)
#

require 'spec_helper'


describe Zeppelin do
  let(:zep) {Zeppelin.create(:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)}
  let(:voyage) {Voyage.create(:code=>'101',:airfield_depart=>'NYC',:airfield_arrive=>'LON',:voyage_date=>'4/11/2011')}

  describe '.new' do

    it 'creates a Zeppelin object' do
      zep = Zeppelin.new(:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)
      expect(zep).to be_an_instance_of(Zeppelin)
    end
  end

  describe '.create' do
    it 'creates an Zeppelin record in the db' do
      zep = Zeppelin.create(:name=>'Big Bertha',:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)
      expect(zep.id).to_not be nil
    end
  end

  describe '#create_seats' do
    it 'creates seats' do
      zep = Zeppelin.create(:name=>'Big Bertha', :style=>'Small', :number_of_rows=>5, :number_of_columns=>2)
      expect(zep.seats).to_not eq nil
    end

    it 'verifies correct number of seats indicated by Zeppelin object' do
      zep = Zeppelin.create(:name=>'Big Bertha',:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)
      expect(zep.seats.count).to eq(zep.number_of_rows * zep.number_of_columns)
    end

    it 'has an array of Seat objects' do
      zep = Zeppelin.create(:name=>'Big Bertha',:style=>'Small', :number_of_rows=>5, :number_of_columns=>2)
      expect(zep.seats.first).to be_an_instance_of(Seat)
    end
  end

  describe '#voyages' do
    it 'has an array of Voyage objects' do
      zep.voyages << voyage
      expect(zep.voyages.first).to eq voyage
    end
  end

  describe '#metadata' do
    it 'has a style, rows and columns ' do
      expect(zep.style).to eq 'Small'
      expect(zep.number_of_rows).to eq 5
      expect(zep.number_of_columns).to eq 2
    end
  end

end
