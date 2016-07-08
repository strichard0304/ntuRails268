class Player
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

module Gesture
  def get_gesture    
  end
end

class Human < Player
  include Gesture
  def get_gesture
    input = gets.chomp.upcase
  end
end

class Computer < Player
  include Gesture
  def get_gesture
    input = ['R','P','S'].shuffle!.last
  end
end

def intro
  puts "|===============================================|" 
  puts "|      Welcome to Rock Paper Scissors!!!        |"
  puts "|===============================================|"
  #puts "  please choose one of the following: R / P / S"  
end

def decide(user,comp)
  puts "computer input is #{comp}. user input is #{user}"
  if comp == user
    puts "Tied"
  elsif(comp == "R" && user == "S") || (comp == "S" && user =="P") || (comp == "P" && user =="R")
    puts "Computer wins"
  else
    puts "You win"
  end  
end

def playagain
  puts "Play Again?: Y / N"
  continue = gets.chomp.upcase
  if(continue == "Y")
    true
  else
    puts "Good Bye! Thanks for playing!"
	false
  end
end


intro
Rich = Human.new("Richard")
PC = Computer.new("Lenovo")
begin
  puts "  Please choose one of the following: R / P / S"  
  decide(Rich.get_gesture,PC.get_gesture)
end while playagain
