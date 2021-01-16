require_relative '../lib/colorize.rb'

def instructions
  system('clear')
  puts "Το παιχνίδι ξεκινάει σε έναν πίνακα 3Χ3 και ο παίκτης ένα έχει τον πρώτο γύρο\n"
  puts 'Όταν είναι η σειρά σου επέλεξε τον αριθμό του τετραγώνου που θές να παίξεις (μεταξύ 1 και 9)'
  puts "Δεν μπορείται να επιλέξετε τετράγωνα που είναι ήδη κατειλλημένα\n\n"
  puts '    -------------'
  puts '    | 1 | 2 | 3 |'
  puts '    -------------'
  puts '    | 4 | 5 | 6 |'
  puts '    -------------'
  puts '    | 7 | 8 | 9 |'
  puts '    -------------'
  puts "\nΝικητής είναι ο παίκτης που θα σχηματίσει πρώτος μία γραμμή από τρία σύμβολα κάθετα, οριζόντια ή διαγώνια\n\n"
  puts 'Πατήστε Enter για να συνεχίσετε'
  gets.chomp
end

def welcome
  'Καλωσήρθατε στην Τρίλιζα από τους Aymen και Patrick'
end

def alone?
  'Παίζεται μόνος ? (ναι/οχι)'
end

def level?
  "Διαλέξτε επίπεδο αντιπάλου:
  1 - Εύκολο (όχι και τόσο έξυπνος)
  2 - Κανονικό (όχι και άσχημα)
  3 - Δύσκολο (το καλύτερο που θα καταφέρεις είναι ισσοπαλλία ^^)"
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

def you_lost(player)
  "Sorry #{player.name}, you lost!".bold.red
end

def restart?
  'Do you want to play again ?'
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
  'Παρακαλώ διαλέξτε ένα νούμερο μεταξύ του ένα και του τρία'.bold.red
end

def same_as_bot
  "Sorry, this is the Bot's name, please choose another name".bold.yellow
end
