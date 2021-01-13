#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/bot.rb'
require_relative '../lib/errors.rb'

def instructions
  system('clear')
  puts "You will have a 3x3 board and player 1 will have the first turn\n"
  puts "When it's your turn enter the number of the square that you want to play (between 1 and 9)"
  puts "Don't choose squares that are already occupied\n\n"
  puts '    -------------'
  puts '    | 1 | 2 | 3 |'
  puts '    -------------'
  puts '    | 4 | 5 | 6 |'
  puts '    -------------'
  puts '    | 7 | 8 | 9 |'
  puts '    -------------'
  puts "\nThe winner is the first one to form a line with 3 symbols vertically, horizontally or diagonally\n\n"
  puts 'Press Enter to continue'
  gets.chomp
end

error = nil
player2 = nil
loop do
  system('clear')
  puts 'Welcome to Tic-Tac-Toe by Aymen and Patrick'
  puts 'Are you alone ? (yes/no)'

  if error
    print "\n"
    puts error
  end
  ans = gets.chomp.downcase
  if ans == 'yes'
    player2 = Bot.new('Bob', 'O')
  elsif ans == 'no'
    break
  else
    error = yes_or_no
  end
end

system('clear')
puts 'Player 1, please enter your name:'
player1 = Player.new(gets.chomp, 'X')
puts "Hello, #{player1.name}, you are '#{player1.letter}'\n\n"
unless player2
  puts 'Player 2, please enter your name:'
  player2 = Player.new(gets.chomp, 'O')
  puts "Hello, #{player2.name}, you are '#{player2.letter}'\n\n"
end

puts "Enter 'y' if you want to see the instructions (Press enter to continue)"
instructions if gets.chomp.downcase == 'y'
system('clear')

b = Board.new
puts 'Building your board...'

winner = false
b.build
system('clear')
puts "\n"
b.show
loop do
  puts "\n#{player1.name}, it's your move\n"
  until b.make_move?(gets.chomp.to_i, player1)
    system('clear')
    puts "\n"
    b.show
    puts "\n"
    puts "#{player1.name}, it's your move"
    puts $err
  end
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
  if player2.is_a?(Bot)
    puts "I'm thinking..."
    sleep(2)
    until b.make_move?(player2.do_something, player2) ;end
  else
    until b.make_move?(gets.chomp.to_i, player2)
      system('clear')
      puts "\n"
      b.show
      puts "\n"
      puts "#{player2.name}, it's your move"
      puts $err
    end
  end
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

puts winner ? "\nCongratulations #{winner}!".bold.light_green : "\nIt's a draw, nobody won!".bold.cyan
puts "Thank you for playing !\n\n\n\n"
puts 'Sleeping...'
sleep(3)
puts 'Good night!'
