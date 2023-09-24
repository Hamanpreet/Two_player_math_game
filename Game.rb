require './Player.rb'
require './Question.rb'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def start_game
    # while @player1.is_alive? && @player2.is_alive?
    #   turn
    # end
    # end_game
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def generate_question
    Question.new(rand(1..20), rand(1..20))
  end

  def update_scores
    puts "Scores: #{@player1.name}: #{@player1.lives}/3, 
    #{@player2.name}: #{@player2.lives}/3"
  end

 def end_game
#   winner = (@player1.is_alive? ? @player1 : @player2)
#   puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end
end