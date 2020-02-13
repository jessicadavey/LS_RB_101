# Rock Paper Scissors Lizard Spock

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

- rock
- paper
- scissors
- lizard
- spock


## Examples

## Data Structures

## Algorithm

## Code
[rpsls.rb](/rpsls.rb)