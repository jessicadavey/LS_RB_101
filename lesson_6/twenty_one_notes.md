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

## Data Structures:

Deck: array
  - can be 'shuffled' (array.shuffle)
  - destructively take off cards until deck is empty
  - 
## Algorithm

### Player turn: 

```ruby
1. set player_hand = []
2. take two cards from deck array and add to player hand
3. show cards to player
4. calculate hand score (don't show player)
5. loop
    ask "hit or stay"
    if hit
      add another card to player hand
      calculate score
      break if busted
      go back to beginning of loop
    if stay
      break out of loop

```


### Calculate Score:

```ruby
input: nested array where only first value of subarry is meaningul
[[10, x], [7, x], ["J", x]...]
output: integer


Steps:

map outer array
  first element of inner array
  if it is a string other than "A", 10
  if it is "A", calculate ace (need a method)

sum the resulting array and return
```

### Calculate Ace:

```ruby

Example hand:

[3, 4, A]

aces = 11

loop through hand
if hand sum > 21
   ace = 1
   go to next ace
   do the same thing again
   
return an array with aces converted as necessary
```