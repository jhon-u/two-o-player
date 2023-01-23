# frozen_string_literal: true

# Game class
class Game
  def initialize(name)
    @name = name
    @player1 = player1
    @player2 = player2
  end

  def start
    puts 'let\'s begin'
  end

  def score
    puts 'The score goes here'
  end

  def turn
    puts 'Sets the current_player'
  end

  def winner
    puts 'Displays the winner'
  end
end
