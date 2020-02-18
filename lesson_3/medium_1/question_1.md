# Question 1

## Problem

- Make ASCII Art
- output a string 10 times
- add one space to the beginning of each subsequent line
- the program should be one line (I'll come back to this one)

## Examples

Expected Output:

```ruby
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
   The Flintstones Rock!
    The Flintstones Rock!
     The Flintstones Rock!
      The Flintstones Rock!
       The Flintstones Rock!
        The Flintstones Rock!
         The Flintstones Rock!
```

## Data Structures

- string
- possibly a string method I haven't learned yet
- can start with a loop

## Algorithm
```ruby
set string = "The Flintstones Rock!"

set i = 0

start a loop
  - print " " * i + string
  - i += i
  - break if i >= 10
end
```
## Code
[Question 1](/question_1.rb)