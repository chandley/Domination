require 'country'

describe 'country' do
  context 'shows on map with armies' do

    let(:belgium)  {Country.new('Belgium')}

    it 'should have a name' do
      expect(belgium.name).to eq('Belgium')
    end

    it 'should start with no armies' do
      expect(belgium.armies).to eq(0)
    end

    it 'should be able to have an army' do
      belgium.add_army
      expect(belgium.armies).to eq(1)
    end

    it 'should be able to remove an army' do
      belgium.add_army
      belgium.remove_army
      expect(belgium.armies).to eq(0)
    end

  end
end
