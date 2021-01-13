require 'colorize'

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

def welcome
  'Bienvenue à Tic-Tac-Toe construit par Aymen et Patrick'
end

def alone?
  'Etes-vous seul ? (oui/non)'
end

def yes
  'oui'
end

def no
  'non'
end

def player_name?(num)
  "Joueur #{num}, entrez votre nom svp:"
end

def greet_player(player)
  "Bonjour, #{player.name}, vous jouez le '#{player.letter}'\n\n"
end

def see_instructions?
  "Entrer 'oui' si vous voulez voir les instructions (Appuyer sur Entrer pour continuer)"
end

def building
  'Je construit...'
end

def done
  "Fini.\n"
end

def player_move?(player)
  "#{player.name}, c'est votre tour"
end

def bot_think
  'Je cogite...'
end

def congrats(winner)
  "\nBravo #{winner}!".bold.light_green
end

def draw_it_is
  "\nEgalité, pas de vainqueur!".bold.cyan
end

def thanks
  puts "Merci pour votre temps !\n\n\n\n"
  puts 'Je dors...'
  sleep(3)
  puts 'Bonne nuit!'
end

# Error messages ----------------------------------------------

def yes_or_no
  'SVP répondre avec oui ou non.'.bold.light_yellow
end

def invalid_error
  'SVP entrer un numéro entre 1 et 9.'.bold.light_red
end

def place_taken
  'SVP choisir une autre place, cette place est prise '.bold.yellow
end

def empty_name
  'SVP entrer au moins une lettre pour votre nom'.bold.yellow
end

def same_name
  'SVP ne pas mettre le même nom que Joueur 1'.bold.cyan
end
