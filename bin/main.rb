#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/bot.rb'

languages = %w[EN FR]
puts "Type 'EN' for english (english is default)"
puts "Ecrire 'FR' pour le français"
choice = gets.chomp.downcase
if languages.any?(choice)
  require_relative "../lang/#{choice}.rb"
else
  require_relative '../lang/en.rb'
end

# initialisation---------
b = Board.new
player2 = nil
printed_name = nil
printed_error = nil
name = nil
# initialisation---------

loop do
  system('clear')
  puts welcome
  puts alone?

  if b.err == yes_or_no
    print "\n"
    puts b.err
  end
  ans = gets.chomp.downcase
  if ans == yes
    player2 = Bot.new('Bob', 'O'.bold.light_red)
    break
  elsif ans == no
    break
  else
    b.err = yes_or_no
  end
end

loop do
  system('clear')
  puts player_name?(1)
  puts b.err if b.err == empty_name
  printed_name = gets.chomp
  name = printed_name.downcase.capitalize.strip
  break unless name == ''

  b.err = empty_name
  printed_error = empty_name
end

player1 = Player.new(name, 'X'.bold.light_blue)
b.err = nil
puts greet_player(player1)

unless player2
  loop do
    system('clear')
    puts player_name?(1)
    puts printed_error if printed_error == empty_name
    puts printed_name
    puts greet_player(player1)
    puts player_name?(2)
    puts b.err if [empty_name, same_name].any?(b.err)
    name = gets.chomp.downcase.capitalize.strip
    if name == ''
      b.err = empty_name
    elsif name == player1.name
      b.err = same_name
    else
      break
    end
  end
  player2 = Player.new(name, 'O'.bold.light_red)
  b.err = nil
  puts greet_player(player2)
end

puts see_instructions?
instructions if gets.chomp.downcase == yes
system('clear')

puts building

winner = false
b.build
system('clear')
puts done
b.show

loop do
  print "\n"
  puts player_move?(player1)
  until b.make_move?(gets.chomp.to_i, player1)
    system('clear')
    puts "\n"
    b.show
    puts "\n"
    puts player_move?(player1)
    puts b.err
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
  print "\n"
  puts player_move?(player2)
  if player2.is_a?(Bot)
    puts bot_think
    sleep(2)
    until b.make_move?(player2.do_something, player2); end
  else
    until b.make_move?(gets.chomp.to_i, player2)
      system('clear')
      puts "\n"
      b.show
      puts "\n"
      puts player_move?(player2)
      puts b.err
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

puts winner ? congrats(winner) : draw_it_is
thanks

# rubocop:enable Metrics/BlockLength
