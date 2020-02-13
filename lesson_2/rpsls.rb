VALID_CHOICES = {
  r: 'rock',
  p: 'paper',
  s: 'scissors',
  l: 'lizard',
  k: 'spock'
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_possible_choices
  prompt("Choose one:")
  VALID_CHOICES.each do |k, v|
    prompt "    '#{k}' for #{v}"
  end
end

def display_results(player, computer)
  win_outcomes = {
    rock: ['scissors', 'lizard'], # i.e., rock beats scissors and lizard
    paper: ['rock', 'spock'],
    scissors: ['paper', 'lizard'],
    lizard: ['paper', 'spock'],
    spock: ['rock', 'scissors']
  }

  if win_outcomes[player.to_sym].include?(computer)
    prompt("You won!")
  elsif player == computer
    prompt("It's a tie!")
  else
    prompt("Computer wins!")
  end
end

loop do
  choice = ''

  loop do
    display_possible_choices

    choice = Kernel.gets().chomp().downcase().to_sym

    if VALID_CHOICES.keys.include?(choice)
      choice = VALID_CHOICES[choice]
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.values.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.  Goodbye!")
