#!/usr/bin/env ruby

require_relative '../lib/game_logic.rb'

puts 'Welcome to Tic-Tac-Toe by Aymen and Patrick'
puts 'Player 1, please enter your name:'
player1 = Player.new(gets.chomp, 'X')
puts "Hello, #{player1.name}, you are '#{player1.letter}'\n\n"
puts 'Player 2, please enter your name:'
player2 = Player.new(gets.chomp, 'O')
puts "Hello, #{player2.name}, you are '#{player2.letter}'\n\n"
puts "Enter 'y' if you want to see the instructions (Press enter to continue)"
puts 'Instructions\n\n' if gets.chomp.downcase == 'y'
b = Board.new
puts 'Creating your board...'
sleep(1.2)

winner = false
b.show
loop do
  puts "\n#{player1.name}, it's your move\n"
  puts 'invalid move! please enter a number between 1 and 9' until b.make_move?(gets.chomp.to_i, player1)
  system('clear')
  puts "\n"
  b.show
  if b.win?
    winner = player1.name
    break
  elsif b.draw?
    break
  end
  puts "\n#{player2.name}, it's your move\n"
  puts 'invalid move! please enter a number between 1 and 9' until b.make_move?(gets.chomp.to_i, player2)
  system('clear')
  puts "\n"
  b.show
  if b.win?
    winner = player2.name
    break
  elsif b.draw?
    break
  end
end
puts winner ? "\nCongratulations #{winner}!" : "It's a draw, nobody won!"
puts "Thank you for playing !\n\n\n\n"
puts 'Sleeping...'
sleep(3)
