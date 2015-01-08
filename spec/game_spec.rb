require 'game.rb'

describe Game do

  let (:game) {Game.new}
  let (:player1) {double :player}
  let (:player2) {double :player}
 
  context "The basics" do

    it "can have a player added" do
      game.add_player(player1)
      expect(game.player1).to eq player1
    end

    it "can have a second player added" do
    	game.add_player(player1)
    	game.add_player(player2)
    	expect(game.player2).to eq player2
    end

    it "can only have a second player if first player got added" do
    	expect{game.add_player(player2)}.to raise_error("Add the first player first")
    end

  end
end