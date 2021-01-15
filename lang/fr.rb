require_relative '../lib/colorize.rb'

def instructions
  system('clear')
  puts "Vous aurez un tableau 3x3 et le joueur 1 aura le premier tour\n"
  puts "Quand c'est votre tour entrez le numéro du carré que vous voulez jouer (entre 1 et 9)"
  puts "Ne pas choisir un carré déjà occupé\n\n"
  puts '    -------------'
  puts '    | 1 | 2 | 3 |'
  puts '    -------------'
  puts '    | 4 | 5 | 6 |'
  puts '    -------------'
  puts '    | 7 | 8 | 9 |'
  puts '    -------------'
  puts "\nLe gagnant est le premier à former une ligne avec 3 symboles verticalement, horizontalement ou en diagonale\n"
  puts ''
  puts 'Appuyer sur Entrer pour continuer'
  gets.chomp
end

def welcome
  'Bienvenue à Tic-Tac-Toe construit par Aymen et Patrick'
end

def alone?
  'Etes-vous seul ? (oui/non)'
end

def level?
  "Choisir la difficultée:
  1 - Facile (vraiment pas brillant)
  2 - Normal (pas mal)
  3 - Difficile (vous ne pouvez pas gagner ^^)"
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
  "\nBravo #{winner}, vous avez gagné!".bold.green
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
  'SVP répondre avec oui ou non.'.bold.yellow
end

def invalid_error
  'SVP entrer un numéro entre 1 et 9.'.bold.red
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

def wrong_level
  'SVP choisir un nombre entre 1 et 3'.bold.red
end
