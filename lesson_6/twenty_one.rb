SPADE =  "\xE2\x99\xA0"
HEART = "\xE2\x99\xA1"
DIAMOND = "\xE2\x99\xA2"
CLUB = "\xE2\x99\xA3"

VALUES = (2..10).to_a + %w(J Q K A)
SUITS = [SPADE, HEART, DIAMOND, CLUB]

def prompt(msg)
  puts "=>#{msg}"
end

def show_hand(cards)
  puts cards.map { |x| x.join }
end

def draw_a_card(deck)
  deck.pop if deck.size > 0
end



deck = VALUES.product(SUITS).shuffle
player_cards = []

loop do
  show_hand(player_cards)
  prompt "Press 'h' to hit, any other key to stay."
  answer = gets.chomp
  break unless  answer.chr.downcase == 'h'
  player_cards << draw_a_card(deck)
end

prompt "Your hand:"
show_hand(player_cards)
