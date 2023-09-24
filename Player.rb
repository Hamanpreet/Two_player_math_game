class Player
#createPlayer
#store data for players

attr_reader :name, :lives

def initialize(name)
  @name = name
  @lives = 3
end


def lose_life
  @lives -= 1
end

def is_alive
  @lives > 0
end

def get_answer
  print "#{@name}: What does #{question.num1} + #{question.num2} equal? "
  gets.chomp.to_i
end
end

