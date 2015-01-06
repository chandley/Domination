require 'country'

describe 'country' do
  context 'shows on map with armies' do


    let(:belgium)  {Country.new('Belgium')}



    it 'should have a name' do
      expect(belgium.name).to eq('Belgium')
    end

    it 'should start with no armies' do
      expect(belgium.armies).to eq([])
    end
  end
end
