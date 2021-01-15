require_relative '../lib/colorize.rb'

def instructions
  system('clear')
  puts "Bech tel9a tableau 3x3 wel joueur 1 yebda louel\n"
  puts 'Wa9t elli yebda el tour mte3ek ekteb el noumrou mte3 el mouraba3 li bech tala3bou (ma bin 1 ou 9)'
  puts "Ma te5tarech mouraba3 deja occupé\n\n"
  puts '    -------------'
  puts '    | 1 | 2 | 3 |'
  puts '    -------------'
  puts '    | 4 | 5 | 6 |'
  puts '    -------------'
  puts '    | 7 | 8 | 9 |'
  puts '    -------------'
  puts "\nAwel we7ed ya3mel 5att bel signe mte3ou (vertical, horizontal wala diagonal) houa li yerba7\n"
  puts ''
  puts 'Enzel 3ala Entrer bech twasel'
  gets.chomp
end

def welcome
  "Mar7bé bik fi 'Tic-Tac-Toe by Aymen and Patrick'"
end

def alone?
  'Wa7dek ? (ayh/lé)'
end

def level?
  "E5tar el difficulté:
  1 - Sehel barcha (maya3rech yal3ab)
  2 - Normal (ça va)
  3 - S3ib barcha (matnejemch terba7 ^^)"
end

def yes
  'ayh'
end

def no
  'lé'
end

def player_name?(num)
  "Joueur #{num}, 7ott esmek:"
end

def greet_player(player)
  "Mar7bé bik, #{player.name}, enti bech tal3ab '#{player.letter}'\n\n"
end

def see_instructions?
  "Ekteb 'ayh' ken t7eb ta3ref kifeh tal3ab (sinon enzel Entrer)"
end

def building
  'Nebni fel tableau...'
end

def done
  "Kammalt.\n"
end

def player_move?(player)
  "#{player.name}, tfadhel"
end

def bot_think
  '9a3ed n5amem...'
end

def congrats(winner)
  "\nMabrouk #{winner}, rba7t!".bold.green
end

def draw_it_is
  "\nTa3adol, 7ad ma rba7!".bold.cyan
end

def thanks
  puts "Merci beaucoup!\n\n\n\n"
  puts 'Bech nor9od...'
  sleep(3)
  puts 'Bonne nuit!'
end

# Error messages ----------------------------------------------

def yes_or_no
  '7ott ayh wela lé y3aychek.'.bold.yellow
end

def invalid_error
  '7ott noumrou ma bin 1 ou 9 y3aychek.'.bold.red
end

def place_taken
  'E5tar mouraba3 e5er y3aychek, hedheka deja tel3ab.'.bold.yellow
end

def empty_name
  '7ott 3al a9al 7arf fi esmek y3aychek'.bold.yellow
end

def same_name
  'Mat7ottech fard esm m3a el joueur 1 y3aychek'.bold.cyan
end

def wrong_level
  'E5tar noumrou ma bin 1 ou 3 y3aychek'.bold.red
end
