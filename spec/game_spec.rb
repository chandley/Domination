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

    it "knows there are two players" do
      game.send(:add_player, player1)
      game.send(:add_player, player2)
      expect(game.send(:has_two_players?)).to eq true
    end

    it "knows there aren't two players" do
      game.send(:add_player, player1)
      expect(game.send(:has_two_players?)).to eq false
    end

    it "knows who's turn it is" do
      game.add_player(player1)
      expect(game.send(:turn)).to eq(player1)
    end

  end
end