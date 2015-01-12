

## Summary







### Domination 

Strategy game like 'Risk'  conquering countries for week 9 makeathon at Makers Academy 

[![Code Climate](https://codeclimate.com/github/chandley/Domination/badges/gpa.svg)](https://codeclimate.com/github/chandley/Domination)    [![Test Coverage](https://codeclimate.com/github/chandley/Domination/badges/coverage.svg)](https://codeclimate.com/github/chandley/Domination)

<div>
<img src= https://img.shields.io/badge/Ruby-Backend-brightgreen.svg>
<img src=https://img.shields.io/badge/CSS-Style-yellow.svg>
</div>

##Team Members
- Chris Hadley
- Simon Lange
- Pavel Redics
- Shan Hasan

### Problem

Two player game with a map. Player should control countries with armies, be able to attack other countries, and be allocated extra armies based on territory controlled. Player wins when he controls all countries on the map

### Languages/Platforms/Tools

| Languages | Technologies  | Testing Frameworks| Misc
| :-------------------------------------------- |:--------------|:-----------|:----|
| Ruby      | svg           | Rspec             | Trello  |
| Javascript| Sinatra       |           | 
| CSS       | Ajax/API      |

### Solution

We decided to write the game logic in ruby on a Sinatra server, for speed and to give us better unit tests.
We used a scalable vector graphics map from http://jvectormap.com/maps/world/europe 
The individual countries were set up as paths within a SVG container so couldn't be addressed directly from css - we updated them from a javascript call. 

### To do

* Add code samples
* run test
* svg updates
* image of map

The game is not currently fully implemented, but we do have a demonstration of attack with update of the svg map

* convert country code lookup file to yaml - data folder
* Allow proper game turns with sessions
* Allocate extra armies to players at beginning of game and turn
* Update attack method to give more sophisticated battles
* Check for winner

### Learning points

We wrote a lot of methods and code that wasn't used - be more rigorous on use of Trello
Communicate what you are working on out of hours, to avoid duplication (use Hipchat)
Next time show full user stories in trello titles
Important to shut down discussion after 20 minutes and make a decision, even if by tossing a coin
We wasted some time from not coordinating morning start times.
Best to exclude java libraries from codeclimate score

