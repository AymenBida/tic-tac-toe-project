require_relative '../lib/colorize.rb'

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
  puts "\nThe winner is the first one to form a line with 3 symbols vertically, horizontally or diagonally\n"
  puts ''
  puts 'Press Enter to continue'
  gets.chomp
end

def welcome
  'Καλωσήρθατε στην Τρίλιζα από τους Aymen και Patrick'
end

def alone?
  'Παίζεται μόνος ? (ναι/οχι)'
end

def level?
  "Choose the oppenent level:
  1 - Easy (not so clever)
  2 - Normal (not bad)
  3 - Hard (the best you can do is a draw ^^)"
end

def yes
  'ναι'
end

def no
  'οχι'
end

def player_name?(num)
  "Παίκτη #{num}, παρακαλώ εισάγεται το όνομα σας:"
end

def greet_player(player)
  "Γειά, #{player.name}, έχεις τα '#{player.letter}'\n\n"
end

def see_instructions?
  "Πατήστε 'ναι' αν θέλετε να δείτε τις οδηγίες (Πατήστε enter για να συνεχίσετε)"
end

def building
  'Κατασκευή πίνακα...'
end

def done
  "Έτοιμος.\n"
end

def player_move?(player)
  "#{player.name}, είναι η σειρά σου"
end

def bot_think
  'Σκέφτομαι...'
end

def congrats(winner)
  "\nΣυχγαρητήρια #{winner}!".bold.green
end

def draw_it_is
  "\nΕίναι ισσοπαλία!".bold.cyan
end

def thanks
  puts "Ευχαριστούμε που πέξατε!\n\n\n\n"
  puts 'Κοιμάμε...'
  sleep(3)
  puts 'Καληνύχτα!'
end

# Error messages ----------------------------------------------

def yes_or_no
  'Παρακαλώ απαντήστε με ναι ή οχι.'.bold.yellow
end

def invalid_error
  'Παρακαλώ διαλέξτε ένα νούμερα μεταξύ των 1 και 9.'.bold.red
end

def place_taken
  'Παρακαλώ διαλέξτε άλλη θέση, αυτή είναι ήδη πιασμένη.'.bold.yellow
end

def empty_name
  'Παρακαλώ διαλέξτε έστω και έναν χαρακτήρα για όνομα'.bold.yellow
end

def same_name
  'Παρακαλώ διαλέξτε διαφορετικό όνομα από τον παίκτη 1'.bold.cyan
end

def wrong_level
  'Please choose a number between 1 and 3'.bold.red
end
