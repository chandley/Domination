require 'game.rb'

describe Game do

  let (:game) {Game.new}
  let (:player) {Player.new}
  let (:country) {Country.new}

  context "player - country interaction" do

    xit "should randomly asign the players total armies to their countries" do
      game.assign_armies
      expect(player.total_armies).to eq(6)
      # expect(country.armies).to_be greater_than(0)
    end

    it "should make sure all countries have at least 1 army" do

    end

  end
  
  context "when playing a round" do

    it "should know who the winner of the battle is" do

    end

    it "should pass the invaded country to the invading player" do

    end

    it "should remove the invaded country from the original player" do

    end
  
  end

  context "When playing the game" do

    it "should have 2 players" do

    end

    it "should know who's turn it is" do

    end

    it "should know who the winner is" do

    end

  end
end