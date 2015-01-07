require 'country'

describe 'country' do
  context 'shows on map with armies' do

    let(:belgium)  {Country.new('Belgium')}
    let(:army) { double :army}

    it 'should have a name' do
      expect(belgium.name).to eq('Belgium')
    end

    it 'should start with no armies' do
      expect(belgium.armies).to eq([])
    end

    it 'should be able to contain an army' do
      belgium.add_army(army)
      expect(belgium.armies).to include(army)
    end
  end
end
