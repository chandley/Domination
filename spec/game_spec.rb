require 'game.rb'

describe Game do

  let (:game) {Game.new}
  let (:player1) {double :player, countries: belgium}
  let (:player2) {double :player, countries: brazil}
  let (:belgium) {double :country, armies: 3}
  let (:brazil) {double :country, armies: 2}
 
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

    it "player has a country and the country has an army" do
    	expect(player1.countries).to eq belgium
    	expect(player1.countries.armies).to eq 3
    end

  end

  context "The logic" do

  	before do
  		game.add_player(player1)
    	game.add_player(player2)
    end

	  	it "should be able to attack a country" do

	  		expect(game.attack(player1)).to eq 2
	  	end
  	end
end