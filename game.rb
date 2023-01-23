# frozen_string_literal: true

# Game class
class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def start
    puts "Welcome #{@player1.name} and #{@player2.name}"
    puts 'Let the game begin!'
    turn
  end

  def score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

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

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '----- GAME OVER -----'
  end
end
