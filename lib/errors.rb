require 'colorize'

def yes_or_no
  "Please respond with yes or no.".bold.light_yellow
end

def invalid_error
  "Please enter a number between 1 and 9.".bold.light_red
end

def place_taken
  "Please choose another spot, this one is already taken.".bold.yellow
end

def empty_name
  "Please enter at least one charachter as a name".bold.yellow
end

def same_name
  "Please don't use the same name as player 1".bold.cyan
end