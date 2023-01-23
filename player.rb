# frozen_string_literal: true

# Creates a new player
class Player
  def initialize(name)
    @name = name
    @lives = lives
  end

  def lives
    puts 'Keeps track of the player\'s lives'
  end
end