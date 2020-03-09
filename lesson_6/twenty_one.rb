SPADE =  "\xE2\x99\xA0"
HEART = "\xE2\x99\xA1"
DIAMOND = "\xE2\x99\xA2"
CLUB = "\xE2\x99\xA3"

VALUES = (2..10).to_a + %w(J Q K A)
SUITS = [SPADE, HEART, DIAMOND, CLUB]

deck = VALUES.product(SUITS).shuffle

def draw_a_card(deck)
  deck.pop if deck.size > 0
end

57.times do |_|
  card = draw_a_card(deck)
  puts card ? card.join : "no more cards"
end

