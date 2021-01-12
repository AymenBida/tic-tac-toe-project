#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength
puts 'Welcome to Tic-Tac-Toe by Aymen and Patrick'
puts 'Player 1, please enter your name: '
name1 = gets.chomp
puts 'Player 2, please enter your name: '
name2 = gets.chomp
puts "Enter 'y' if you want to see the instructions (Press enter to continue)"
answer = gets.chomp.downcase
puts 'Instructions' if answer == 'y'
loop do
  winner = false
  board.display # This displays the board state
  loop do
    # Player 1 turn
    puts "#{name1} it's your move"
    until move.is_valid?
      move = gets.chomp # This will get the players input
      puts "Your move (#{move}) is not valid, try another move" unless move.is_valid?
    end
    puts "#{name1}, your move was : #{move}"
    board.display # This displays the board state
    if move.win?
      winner = name1
      break
    elsif draw == true
      break
    end
    # Player 2 turn
    puts "#{name2} it's your move"
    until move.is_valid?
      move = gets.chomp # This will get the players input
      puts "Your move (#{move}) is not valid, try another move" unless move.is_valid?
    end
    puts "#{name2}, your move was : #{move}"
    board.display # This displays the board state
    if move.win?
      winner = name2
      break
    elsif draw == true
      break
    end
  end
  puts winner ? "Congratulations #{winner}!" : "It's a draw, nobody won!"
  puts 'Do you want to rematch ?'
  puts "Enter 'y' if you want to rematch or press enter to exit"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
exit(true)
# rubocop:enable Metrics/BlockLength
