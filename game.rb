# frozen_string_literal: true

# Game class to handle the start of the game, display the score, process results and display the winner.
class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  # Starts the game
  def start
    puts "Welcome #{@player1.name} and #{@player2.name}"
    puts 'Let the game begin!'
    turn
  end

  # Displays the score after each player's turn.
  def score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  # Handles the player's turns
  def turn
    current_player = @player1
    until @player1.lives.zero? || @player2.lives.zero?
      question = Question.new
      player_answer = question.answer?(current_player)
      process_results(player_answer, current_player)
      current_player = current_player == @player1 ? @player2 : @player1
    end
    winner(current_player)
  end

  # Displays the result of each turn and updates the looser player's lives
  def process_results(result, player)
    if result
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      player.lose_life
    end
    score
    puts '----- NEW TURN -----'
  end

  # Displays the winner of the game
  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '----- GAME OVER -----'
  end
end
