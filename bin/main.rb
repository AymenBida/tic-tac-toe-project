#!/usr/bin/env ruby
puts 'Welcome to Tic-Tac-Toe by Aymen and Patrick'
puts 'Player 1, please enter your name: '
name1 = gets.chomp
puts 'Player 2, please enter your name: '
name2 = gets.chomp
puts "Enter 'y' if you want to see the instructions (Press enter to continue)"
answer = gets.chomp.downcase
puts 'Instructions' if answer == 'y'
loop do
  puts 'Board'
  loop do
    # Player 1 turn
    puts "#{name1} it's your move"
    move = gets.chomp # This will get the players input
    puts 'Board'
    # if won? <-- Method to check if player 1 wins
      # winner = name1
      # break
    # Player 2 turn
    puts "#{name2} it's your move"
    move = gets.chomp
    puts 'Board'
    # if won? <-- Method to check if player 2 wins
      # winner = name2
      # break
  end
  puts "Congratulations #{winner}!"
  puts "Do you want to rematch ?"
  puts "Enter 'y' if you want to rematch or press enter to exit"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
exit(true)
