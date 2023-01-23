# frozen_string_literal: true

# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require './game'
require './player'
require './question'

new_game = Game.new
new_game.start
