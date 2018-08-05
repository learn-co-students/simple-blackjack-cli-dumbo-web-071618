def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...12)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

# def hit?(number)
#   # code hit? here
#   prompt_user
#   get_user_input
#   number
  
#   # if get_user_input == 'h'
#   #   deal_card
#   # end
# end

def hit?(current_card_value)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    current_card_value += deal_card
  end
  return current_card_value
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# def runner
#   # code runner here
#   welcome
#   # initial_round
#   # hit?
#   # deal_card
#   # hit?
#   # display_card_total
#   # end_game
# end
    
def runner
  welcome
  sum = initial_round
  until sum > 21 
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end