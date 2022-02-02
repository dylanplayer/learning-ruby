require_relative "Choice.rb"
require_relative "Game.rb"

rock = Choice.new(1, "Rock", "Rock crushes scissors", 2)
scissors = Choice.new(2, "Scissors", "Scissors cuts paper", 3)
paper = Choice.new(3, "Paper", "Paper covers rock", 1)

choices = [rock, paper, scissors]
game = Game.new(choices)

player1_choice = nil
while player1_choice == nil
  print("Player 1 choice: ")
  player1_input = gets.chomp
  player1_choice = game.get_choice(player1_input)
end

player2_choice = nil
while player2_choice == nil
  print("Player 2 choice: ")
  player2_input = gets.chomp
  player2_choice = game.get_choice(player2_input)
end

game.play(player1_choice, player2_choice)
