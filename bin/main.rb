#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength
# rubocop:disable Layout/LineLength

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/bot.rb'
require_relative '../lib/colorize.rb'

# initialisation---------
b = Board.new
player2 = nil
printed_name = nil
printed_error = nil
name = nil
not_language = "Please choose one of the languages available by typing the language code (eg: 'en' for English)".bold.yellow
# initialisation---------

languages = { en: 'English', fr: 'Français', gr: 'Ελληνικά', tn: 'Tounsi' }
loop do
  system('clear')
  puts "Welcome to Tic-Tac-Toe by Aymen and Patrick\n\n"
  puts 'Choose language :'
  languages.each { |code, lang| puts "#{code} - #{lang}" }
  puts b.err if b.err == not_language
  choice = gets.chomp.downcase.to_sym
  if languages.keys.any?(choice)
    require_relative "../lang/#{choice}.rb"
    break
  else
    b.err = not_language
  end
end

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
    loop do
      system('clear')
      puts level?
      puts b.err if b.err == wrong_level
      ans = gets.chomp
      if %w[1 2 3].any?(ans)
        case ans
        when '1'
          bot_name = 'Dummy123'
        when '2'
          bot_name = 'AverageJoe'
        when '3'
          bot_name = 'ProGamerXXX'
        end
        player2 = Bot.new(bot_name, 'O'.bold.red, ans)
        break
      else
        b.err = wrong_level
      end
    end
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
  puts b.err if b.err == empty_name || b.err == same_as_bot
  printed_name = gets.chomp
  name = printed_name.downcase.capitalize.strip
  if name == ''
    b.err = empty_name
    printed_error = empty_name
  elsif player2 && name == player2.name
    b.err = same_as_bot
    printed_error = same_as_bot
  else
    break
  end
end

player1 = Player.new(name, 'X'.bold.blue)
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
  player2 = Player.new(name, 'O'.bold.red)
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
  until b.make_move?(gets.chomp, player1)
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
    player2.bot_b.board = *b.board
    move = player2.test_moves
    b.make_move?(move, player2)
  else
    until b.make_move?(gets.chomp, player2)
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
if player2.is_a?(Bot) && winner == player2.name
  puts you_lost(player1)
else
  puts winner ? congrats(winner) : draw_it_is
end
thanks

# rubocop:enable Metrics/BlockLength
# rubocop:enable Layout/LineLength
