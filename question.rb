# frozen_string_literal: true

# Creates a new math question
class Question
  def initialize
    @number1 = rand(50)
    @number2 = rand(50)
    @answer = @number1 + @number2
  end

  def question(player)
    "#{player.name}: What does #{@number1} plus #{@number2} equal?"
  end

  def player_answer
    print '> '
    $stdin.gets
  end

  def answer?(player)
    puts question(player)
    @answer == player_answer.to_i
  end
end
