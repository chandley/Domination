require 'models/game.rb'

describe Game do

  let (:game) {Game.new}
  let (:player1) {double :player, countries: belgium}
  let (:player2) {double :player, countries: brazil}
  let (:belgium) {double :country, armies: 3}
  let (:brazil) {double :country, armies: 1, attacked?: true}
  let (:holland) {double :country, armies: 2, attacked?: true}
  

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

    xit "knows who's turn it is" do
      game.add_player(player1)
      expect(game.send(:turn)).to eq(player1)
    end

    it "player has a country and the country has an army" do
    	expect(player1.countries).to eq belgium
    	expect(player1.countries.armies).to eq 3
    end

  end

  context "Attacking" do

  	before do
  		game.add_player(player1)
    	game.add_player(player2)
    end

    def test_attack
      game.attack({:attacking_player => player1, 
                   :defending_player => player2,
                   :attacking_country => belgium,
                   :defending_country => brazil
                   })
    end

      it "should generate error if attacker only has one army" do
        expect(brazil.armies).to eq(1)
      end

	  	it "attacking country with more armies then defending country removes one army from defender" do
        expect(holland).to receive(:remove_army)
        game.attack({:attacking_player => player1, 
                   :defending_player => player2,
                   :attacking_country => belgium,
                   :defending_country => holland
                   })
	  	end

      it "attacking country takes over country with single defending army" do        
        allow(belgium).to receive(:remove_army)
        expect(player1).to receive(:country_input)
        expect(player2).to receive(:remove_country)
        test_attack
      end

      xit "attacking country loses an army when taking over another country" do        
        allow(player1).to receive(:country_input)
        allow(player2).to receive(:remove_country)
        expect(belgium).to receive(:remove_army)
        test_attack
      end

      xit "can switch turns" do 
        game.send(:switch_turns)
        expect(game.send(:turn)).to eq player2
      end



  end
end








