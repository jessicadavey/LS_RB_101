SPADE =  "\xE2\x99\xA0"
HEART = "\xE2\x99\xA1"
DIAMOND = "\xE2\x99\xA2"
CLUB = "\xE2\x99\xA3"

VALUES = (2..10).to_a + %w(J Q K A)
SUITS = [SPADE, HEART, DIAMOND, CLUB]

def prompt(msg)
  puts "=>#{msg}"
end

def show_hand(hand)
  cards = hand.map { |x| x.join }
  puts cards.flatten.join(" ")
end

def draw_card(deck)
  deck.pop if deck.size > 0
end

def initialize_hand(hand, deck)
  hand << draw_card(deck) << draw_card(deck)
end

def calculate_score(hand)
  counter = 0
  score = 0
  
  loop do
    score += case hand[counter].first
    when 2..10
      hand[counter].first
    when "J", "Q", "K"
      10
    when "A"
      ((score + 11) > 21) ? 1 : 11
    end
    counter +=1
    break if counter == hand.size
  end
  
  score
end

deck = VALUES.product(SUITS).shuffle
player_hand = []
initialize_hand(player_hand, deck)
player_score = nil

loop do
  prompt "Your hand:"
  show_hand(player_hand)
  
  player_score = calculate_score(player_hand)
  puts player_score
  if player_score > 21
    prompt "You busted!"
    break
  end
  prompt "Press 'h' to hit, any other key to stay."
  answer = gets.chomp
  unless answer.chr.downcase == 'h'
    prompt "You chose to stay."
    prompt "Your score is: #{calculate_score(player_hand)}"
    break
  end
  player_hand << draw_card(deck)
end
