#Mini makeathon

##MVP - RISK

[![Code Climate](https://codeclimate.com/github/chandley/Domination/badges/gpa.svg)](https://codeclimate.com/github/chandley/Domination)[![Test Coverage](https://codeclimate.com/github/chandley/Domination/badges/coverage.svg)](https://codeclimate.com/github/chandley/Domination)

Strategy based game around concurring islands

###Classes
- Countries
- Player
- Dice
- Army
- Game

####Countries
- Should hold armies
- Can lose armies
- Can gain armies
- Should know what countries they are connected to 

####Player
- Controls Armies
- Can instruct armies to invade countries
- Can finish turn

####Dice
- Randomly selects number between 1 and 6
- One dice per army

####Army
- Can beat another army
- Can lose to another army
- Only invade country when more then 1 army in the country

####Game
- Winning army scores higher number on dice role