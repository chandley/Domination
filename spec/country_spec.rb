require 'models/country'
require 'spec_helper'

describe 'country' do
  context 'shows on map with armies' do

    let(:belgium)  {Country.new("Belgium")}
    # let(:player1) {double :player}

    it 'should have a name' do
      expect(belgium.name).to eq('Belgium')
    end

    it 'should start with armies equal to 1' do
      expect(belgium.armies).to eq(1)
    end

    it 'should be able to add an army' do
      belgium.add_army
      expect(belgium.armies).to eq(2)
    end

    it 'should be able to remove an army' do
      belgium.add_army
      belgium.remove_army
      expect(belgium.armies).to eq(1)
    end

    it 'should never have less then 1 army' do
      expect{belgium.remove_army}.to raise_error("Game error: You are not allowed to remove the last army from this country")
    end   

  end
end


