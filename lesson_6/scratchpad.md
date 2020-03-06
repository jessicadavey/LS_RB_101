# Improved "Join"

## Problem

- input: array of numbers
- output: string
- explicit rules: 
-   print numbers joined by ", "
-   if one elements, replace the ", " between the last two elements with ", or " 
- implicit rules:
-   if the array.size == 1, just output the number (as a string)
-   if two elements, replace the ", " between the last two elements with " or " 
-   have an optional parameter for the delimiter (default to ",")

## Examples

```ruby
joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
```

## Data Structures/Algorithm

```ruby
1. get an array of numbers
2. if one number, return that number
3. if two numbers, return those numbers separated by " or "
4. if three or more numbers
    - turn last number into a string
    - prepend "or "
    - call array.join(", ") and return

```
# Keep Score

## Problem

Explicit rules:

- keep track of how many times each player wins
- first to 5 wins the game
- 

Implicit rules:

- let player decide whether or not to continue after every game still
- keep score, and reset after someone gets to 5 (rather than automatic exit
 

## Data Structures

- variables for player and computer scores (in "play again" loop)
-   - inside a hash
- method `detect_overall_winner` to decide whether or not to reset
- need to display overall winner as well

## Algorithm

```ruby
after start (outside loop)
  scores = { 'player' => 0, 'computer' => 0 }
before play again?
  if someonewon?
    increment winner score by one
  display scores
  if overall_winner? (method uses a detect_overall_winner method)
      display detect_overall_winner
      scores['player'] = 0
      scores['computer'] = 0
```

# Computer AI: Defense

## Problem:

Explicit Rules:

- make the computer defend an "immediate threat"
- immediate threat: player has two squares in a winning three squares
- in that case, computer takes third square
- otherwise, computer picks randomly
- 

At Risk Square Method:

- input: board condition, win conditions
- output: integer (square)

## Data Structures

- WINNING_LINES is already a constant (nested array)
- 

## Algorithm

```ruby
find out if Player has 2 in a row
  - use part of code from detect_winner method
if yes, choose the remaining square from that row
if not, pick empty square at random

At Risk Square Method:

- loop through win conditions
- for each array:
  - if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2 AND brd.values_at(line[0], line[1], line[2]).count(" ") == 1
      return empty_squares(brd) & subarray

```

# Computer AI: Offense

## Problem

- modify the `at_risk_square` method so that two computer markers in a row + an empty space is also "at risk"