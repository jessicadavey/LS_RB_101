require 'pry'

SPADE = "\xE2\x99\xA0"
HEART = "\xE2\x99\xA1"
DIAMOND = "\xE2\x99\xA2"
CLUB = "\xE2\x99\xA3"

VALUES = (2..10).to_a + %w(J Q K A)
SUITS = [SPADE, HEART, DIAMOND, CLUB]

def prompt(msg)
  puts "=>#{msg}"
end

def show_hand(hand, hide = nil)
  cards = hand.map(&:join)
  if !hide
    puts cards.flatten.join(" ")
  else
    puts cards.first + " and unknown card"
  end
end

def draw_card(deck)
  deck.pop unless deck.empty?
end

def initialize_hand(hand, deck)
  hand << draw_card(deck) << draw_card(deck)
end

def calculate_score(hand)
  values = hand.map { |card| card[0] }
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  
  values.select { |value| value == "A"}.count.times do
    sum -= 10 if sum > 21
  end
  
  sum
end

def busted?(score)
  score > 21
end

def compare_scores(player_score, dealer_score)
  if player_score > dealer_score
    "Player wins!"
  elsif dealer_score > player_score
    "Dealer wins!"
  else
    "It's a tie!"
  end
end

prompt "Welcome to 21!"

loop do
  deck = VALUES.product(SUITS).shuffle
  player_hand = []
  initialize_hand(player_hand, deck)
  player_score = 0

  dealer_hand = []
  initialize_hand(dealer_hand, deck)
  dealer_score = 0

  loop do
    player_score = calculate_score(player_hand)
    prompt "Your hand:"
    show_hand(player_hand)
    prompt "Dealer hand:"
    show_hand(dealer_hand, 'hide')

    answer = ""
    loop do
      prompt "hit or stay?"
      answer = gets.chomp.downcase
      break if answer == 'hit' || answer == 'stay'
      prompt "Type 'hit' or 'stay'."
    end

    break if answer == 'stay' || busted?(player_score)
    player_hand << draw_card(deck)
  end

  prompt "Your hand:"
  show_hand(player_hand)
  prompt "Your score is: #{player_score}"
  if busted?(player_score)
    prompt "You busted!"
    prompt "Dealer wins!"
  else
    prompt "You chose to stay!"
  end

  if !busted?(player_score)
    puts
    prompt "Dealer's turn!"

    loop do
      prompt "Dealer has:"
      show_hand(dealer_hand)
      dealer_score = calculate_score(dealer_hand)
      break if dealer_score >= 17 || busted?(dealer_score)
      dealer_hand << draw_card(deck)
    end

    if busted?(dealer_score)
      prompt "Dealer busted!"
      prompt "Player wins!"
    else
      prompt "Dealer score is: #{dealer_score}"
      prompt compare_scores(player_score, dealer_score)
    end
  end

  prompt "Play again? y/n"
  answer = gets.chomp
  break unless answer.downcase.chr == 'y'
end

prompt "Thank you for playing 21.  Goodbye."
