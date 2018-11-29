# Battle
A simple unresponsive web-application written in Ruby as part of the Makers Academy course (Week 3).  The application is a basic two player battle game where players can enter their names and then 'attack' each other.  Each player starts with 100 
points and they take it in turn to attack each other.  Each attack will deduct a random number of points from the opponent's 
total. The game is over when one player has zero points left.  Confirmation of the winner will be shown on screen along with the option to start a new game.

### Build Status
[![Build Status](https://travis-ci.org/FergusLemon/battle.svg?branch=master)](https://travis-ci.org/FergusLemon/battle)

For this project Travis CI was used and the build status is passing.

### Installation

- [ ] **Step 1** - Clone this repository by copying the link available at the top of this webpage in the green button labelled 'Clone or Download'. 
- [ ] **Step 2** - Open up a Terminal window (Mac OS) and run `git clone <link>` where `<link>` is what you copied in the previous step.
```
>> git clone https://github.com/FergusLemon/battle.git
```
- [ ] **Step 3** - `cd` into the cloned directory.
- [ ] **Step 4** - Run the `rackup` command.  This will start a server on port `9292` by default.  If you want to set a different port number just run the command with the `-p` flag; for example: `rackup -p 9494` if you wanted to start the server on port 9494.
- [ ] **Step 5** - Open a browser and visit `localhost:9292` (if you have changed the default port then use that number instead).  You should now see the landing page for Battle, from where you can start a game.

### Tests
Unit tests can be located in the `spec` directory and can be run from the `battle` directory using the command `rake`.  Feature tests can be found in the `spec/features` directory, in these feature test files you'll also find user stories (commented out) that relate to the feature tests.

The Rubocop style guide has been used to inform the style of the code, most recommendations have been updated for and the remaining recommendations can be seen by using the `rubocop` command from the `battle` directory.  
The decision was made to ignore some recommendations relating to line length due to readability and comments due to the simple nature of the objects that make up the codebase. A class varibale has been used in the Game class to allow for persistance of state across HTTP requests to different routes.

### Dependencies
All dependencies can be found in the `Gemfile` and `Gemfile.lock`.  Bundler was used to manage dependencies.

### License
MIT (c) 2018 Fergus Lemon

See `LICENSE` for more detail.
