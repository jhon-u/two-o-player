# frozen_string_literal: true

# Creates a new math question
class Question
  def initialize
    @number1 = number1
    @number2 = number2
    @result = @number1 + @number2
  end

  def new_question
    puts 'Asks the question'
  end

  def answer
    puts 'Checks the answer'
  end
end