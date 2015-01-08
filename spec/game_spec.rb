require 'game.rb'

describe Game do

  let (:game) {Game.new}
  let (:player1) {double :player}
 
  context "The basics" do

    it "can have a player added" do
      game.add_player(player1)
      expect(game.player1).to eq player1
    end

  end
end