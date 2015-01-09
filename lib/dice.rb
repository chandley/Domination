RAW_COUNTRIES = [{country: "GB", color: nil}, 
             {country: "FR", color: nil},
             {country: "UA", color: nil},
             {country: "RU", color: nil},
             {country: "BE", color: nil},
             {country: "ES", color: nil},
             {country: "DE", color: nil},
             {country: "SE", color: nil},
             {country: "IT", color: nil},
             {country: "CH", color: nil}]

COUNTRIES = { countries: []}

def assign_countries(countries)
  if countries.count > 5
    i = countries.count
    5.times do |num|
      index = rand(i)
      countries[index][:color] = "green"
      # player.country_input(countries[index])
      COUNTRIES[:countries] << countries[index]
      countries.delete(countries[index])
      i -= 1
    end
  else
    5.times do |num|
      countries[num][:color] = "red"
      # player.country_input(countries[num])
      COUNTRIES[:countries] << countries[num]
    end
  end
end