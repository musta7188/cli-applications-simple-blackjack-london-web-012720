require "pry"

def welcome
message =  "Welcome to the Blackjack Table"
puts message
end

def deal_card
number = rand(1..11)
number
end

def display_card_total(deal_card)
  message =  "Your cards add up to #{deal_card}"
  puts message
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
user_input = gets.chomp
user_input
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
sum =  deal_card + deal_card
   print display_card_total(sum)

   return sum

end

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

 puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    card_value = initial_round

    while card_value <= 21
      card_value = hit?(card_value)
      display_card_total(card_value)
  end
  if card_value > 21
  end_game(card_value)
end
end
