
hand = [[3, 0], [4, 0], ["A", 0]]

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
      if (score + 11) > 21
        1
      else
        11
      end
    end
    counter +=1
    break if counter == hand.size
  end
  
  score
end


p calculate_score(hand)
