# Assignment: Twenty-One

## Notes:

- standard deck of 52 cards (4 suits * 13 values)
  - numbers are worth face value
  - face cards are worth 10
  - aces are worth 11 or 1, depending on the context (needs a method, probably)
 - goal is to get as close to 21 as possible without going over
  - two players, 'player' and 'dealer'
  - both are dealt 2 cards: player sees both their cards, one of the dealer'sees
  
### turns:
  - player goes first
     - hit: ask for another card
     - do this as many times as they want (loop)
  - player's turn is over when player busts or stays
     - bust: game over, dealer wins
     - stay: dealer's turn

  - dealer's turn:
     - hit until total is >= 17
      - if dealer busts, game over, player wins

  - comparing cards:
     - when both stay, compare cards
     - 
     - 
# Data Structures:

Deck: array
  - can be 'shuffled' (array.shuffle)
  - destructively take off cards until deck is empty