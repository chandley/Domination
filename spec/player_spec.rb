require "player"

describe Player do

  # let (:player) { Player.new("UK", "France", "Germany") }
  let (:player) { Player.new}
  let (:england) {double :country}
  let (:france) {double :country}
  let (:belgium) {double :country}

context ""
  before do
    player.country_input(england)
    player.country_input(france)  
  end
  
  it "should have a name" do
    player.name = "Shan"
    expect(player.name).to eq "Shan"
  end

  xit "should have no countries when initialized" do
    expect(player.countries).to eq []
  end

  it "should be able to add countries" do
    expect(player.countries).to eq [england, france]
  end

  it "should have total number of armies equal to 2 times the number of countires they have" do
    expect(player.army_count).to eq 4
  end

  # it "should select a country at random" do
  #   expect(player.sample_country).to eq 'UK'
  # end

  xit "should remove an army from Player" do
    player.army_count
    expect(player.delete_army).to eq 5
  end

  xit "should start new round with new armies" do
    expect(player.new_round).to eq 3
  end


end