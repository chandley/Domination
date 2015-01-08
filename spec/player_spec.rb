require "player"

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

    it "should have total number of armies equal to 2 times the number of countires they have" do
      expect(player.army_count).to eq 6
    end

    it "should remove an army from Player" do
      player.army_count
      expect(player.delete_army).to eq 5
    end

    it "should start new round with new armies" do
      expect(player.new_round).to eq 3
    end
  end

end

    # it "should select a country at random" do
    #   expect(player.sample_country).to eq 'UK'
    # end