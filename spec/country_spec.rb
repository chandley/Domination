require 'country'

describe 'country' do
  context 'shows on map with armies' do
    it 'should have a name' do

      belgium = Country.new('Belgium')
      expect(belgium.name).to eq('Belgium')
    end
  end
end
