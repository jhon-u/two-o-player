# frozen_string_literal: true

# Creates a new math question
class Question
  @number1 = rand(50)
  @number2 = rand(50)
  @answer = @number1 + @number2

  def answer?(player_input)
    @result == player_input
  end

  def question(player)
    @question = "#{player}: What does #{@number1} plus #{@number2} equal?"
    puts '> '
    player_input = $stdin.gets.chomp
    @answer == player_input
  end
end
