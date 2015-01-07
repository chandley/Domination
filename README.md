#MVP - RISK

[![Code Climate](https://codeclimate.com/github/chandley/Domination/badges/gpa.svg)](https://codeclimate.com/github/chandley/Domination)    [![Test Coverage](https://codeclimate.com/github/chandley/Domination/badges/coverage.svg)](https://codeclimate.com/github/chandley/Domination)

<div>
<img src= https://img.shields.io/badge/Ruby-Backend-brightgreen.svg>
<img src=https://img.shields.io/badge/CSS-Style-yellow.svg>
</div>

Strategy based game around concurring islands

##Classes
- Countries
- Player
- Dice
- Army
- Game

###Countries
- Should hold armies
- Can lose armies
- Can gain armies
- Should know what countries they are connected to
- Belongs to a player 

###Player
- Controls Armies
- Starts with 20 armies each
- Can instruct armies to invade countries
- Can finish turn
- Getes extra armies, one for each army they control

###Dice
- Randomly selects number between 1 and 6
- One dice per army

###Army
- Can beat another army
- Can lose to another army
- Only invade country when more then 1 army in the country
- Belongs to a player

###Game
- Winning army scores higher number on dice role
- Winner is player who controls all countries
- Player looses when he controls no countries
- Game played till one player left, they are crowned the winner. 
