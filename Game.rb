require './Player.rb'
require './Question.rb'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def start_game
    puts "Welcome to the 2-player Math Game!"
    loop do
      question = generate_question
      puts "---------NEW TURN---------"
      puts "#{@current_player.name}: What does #{question.num1} + #{question.num2} equals?"
      answer = @current_player.get_answer(question)
      if question.check_answer(answer)
        puts "Correct! good job"
      else
        puts "Wrong answer!"
        @current_player.lose_life
      end
      update_scores
      break if end_game
      switch_player
    end
    puts "-------GAME OVER----------"
    puts "Goodbye!"
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def generate_question
    Question.new(rand(1..20), rand(1..20))
  end

  def update_scores
    puts "Scores: #{@player1.name}: #{@player1.lives}/3, #{@player2.name}: #{@player2.lives}/3"
  end

 def end_game
  @player1.lives == 0 || @player2.lives == 0
  end
end