require 'army'

describe 'army' do
  context 'basic properties' do

    let(:player1) { double :player}
    let(:army)  {Army.new(player1)}

    it 'should belong to a player' do
      expect(army.owner).to equal(player1)
    end
  end
end
  

