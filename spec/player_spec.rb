require "models/player"

describe Player do

  let (:player) { Player.new}
  let (:england) {double :country}
  let (:france) {double :country}
  let (:belgium) {double :country}

  context "when initilaising" do
    
    it "should have a name" do
      player.name = "Shan"
      expect(player.name).to eq "Shan"
    end

    it "should be initialized with no countries" do
      expect(player.countries).to eq []
    end
  end

  context "when playing" do
    
    before do
      player.country_input(england)
      player.country_input(france)  
      player.country_input(belgium)  
    end

    it "should be able to add countries" do
      expect(player.countries).to eq [england, france, belgium]
    end

    xit "should have total number of armies equal to 2 times the number of countires they have" do
      expect(player.start_number_of_armies).to eq 6
    end

    xit "should remove an army from Player" do
      player.start_number_of_armies
      expect(player.delete_army).to eq 5
    end

    xit "should start new round with new armies" do
      expect(player.new_round).to eq 3
    end
  end

end

    # it "should select a country at random" do
    #   expect(player.sample_country).to eq 'UK'
    # end