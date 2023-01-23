# frozen_string_literal: true

# Creates a new player
class Player
  attr_accessor :lives
  attr_reader :name

  # Inializes the players name and number of lives.
  def initialize(name)
    @name = name
    @lives = 3
  end

  # Updates the player's lives when they lose.
  def lose_life
    @lives -= 1
  end
end
