describe Voyage do
  let(:voyage) {FactoryGirl.create(:voyage)
  describe '.create' do
    it 'is a Voyage object' do
      voyage.to be_an_instance_of(Voyage)
    end
  end

  describe '#metadata' do
    it 'has voyage properties' do
      expect(voyage.code).to be 'BNY120'
      expect(voyage.airfield_depart).to be 'Berlin'
      expect(voyage.airfield_arrive).to be 'New York'
      expect(voyage.date).to be '1900-04-01'
    end
  end
end
