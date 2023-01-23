# frozen_string_literal: true

# Creates a new addition question
class Question
  def initialize
    @number1 = rand(50)
    @number2 = rand(50)
    @answer = @number1 + @number2
  end

  # Displays the question using the inizialized values.
  def question(player)
    "#{player.name}: What does #{@number1} plus #{@number2} equal?"
  end

  # Prompts the player to enter their answer.
  def player_answer
    print '> '
    $stdin.gets
  end

  # Checks if the player's answer matches the one from the initialized value and returns true or false.
  def answer?(player)
    puts question(player)
    @answer == player_answer.to_i
  end
end
