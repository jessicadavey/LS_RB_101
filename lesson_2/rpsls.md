# Rock Paper Scissors Bonus Features

# Bonus 1:

## Problem

Add two more options to the rock, paper, scissors game, lizard and spock, while keeping all existing functionality.

Win conditions (> == 'beats')
- rock > scissors
- rock > lizard
- paper > rock
- paper > spock
- scissors > paper
- scissors > lizard
- lizard > paper
- lizard > spock
- spock > rock
- spock > scissors

## Examples

Player choice: scissors<br>
Computer choice: spock<br>
Output: "Computer won!"

Player choice: lizard<br>
Computer choice: paper<br>
Output: "You won!"

Player choice: rock<br>
Computer choice: rock<br>
Output: "It's a tie!"

## Data Structures
```ruby
Array of all possible choices

Hash (outcomes) of what each selection beats
{
  rock: ['scissors', 'lizard'],
  scissors: ['paper', 'lizard']
  ...
}
```
## Algorithm
```ruby
Get player choice as user input
Get computer choice as random sample from array

if outcomes[player choice (to symbol)] includes computer choice
  player wins ("You won!")
elsif player choice == computer choice
  it's a tie ("It's a tie!")
else
  computer wins ("Computer won!)
end

```

# Bonus 2

## Problem

Make it so that users can type an abbreviation of each choice instead of typing out the whole thing.

## Examples

- rock => 'r'
- paper => 'p'
- scissors => 's'
- lizard => 'l'
- spock => 'k'

## Data Structures

Use a hash as a lookup table.
```ruby
abbreviations = {
  r: 'rock'
  p: 'paper'
  s: 'scissors'
  l: 'lizard'
  k: 'spock'
}
```

Could also use the values of this hash to populate the VALID_CHOICES array.

## Algorithm
```ruby
Get letter input from user

if abbreviations.keys.include?(input.to_sym)
  player's choice = abbrevations[input]
else
  keep looping to make them choose again
end
```

# Bonus 3

## Problem

Keep track of how many wins each player has
  - Once a player reaches five wins, the game is over
  - Ties don't count

## Examples
```ruby
Example output:

(heading)
ROCK PAPER SCISSORS LIZARD SPOCK
First to 5 wins the match!
...

Computer wins!
Score: 
player: 4, computer: 2

It's a tie!
Score: 
player: 4, computer: 2

You win!
Score: 
player: 5, computer: 2
CONGRATULATIONS, YOU ARE THE GRAND WINNER!
Do you want to play again?

```

## Data Structures

Hash to store numeric values as keys:
```ruby
score = {
  player: 3
  computer: 2
}
```

## Algorithm

- Each loop, increment the winner's number by one
- When someone has reached 5 wins, break out of the loop
- Don't increment either in case of a tie

## Code
[rpsls.rb](/rpsls.rb)