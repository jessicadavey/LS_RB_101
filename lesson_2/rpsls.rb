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

def find_result(player, computer)
  win_outcomes = {
    rock: ['scissors', 'lizard'], # i.e., rock beats scissors and lizard
    paper: ['rock', 'spock'],
    scissors: ['paper', 'lizard'],
    lizard: ['paper', 'spock'],
    spock: ['rock', 'scissors']
  }

  if win_outcomes[player.to_sym].include?(computer)
    return "player"
  elsif player == computer
    return "tie"
  else
    return "computer"
  end
end

def display_result(result)
  if result == "player"
    prompt("You win!")
  elsif result == "computer"
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

loop do
  score = {
  player: 0,
  computer: 0
  }

  loop do
    choice = ''

    loop do
      display_possible_choices()

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

    # display result
    result = find_result(choice, computer_choice)
    display_result(result)

    # update overall score
    if result != "tie"
      score[result.to_sym] += 1
    end

    # display overall score
    puts("Score: player: #{score[:player]}, computer: #{score[:computer]}")
    puts("")
    puts("---------------")
    puts("")

    # display end game result
    if score[:player] == 5
      prompt("CONGRATULATIONS, YOU ARE THE GRAND WINNER!!")
      break
    elsif score[:computer] == 5
      prompt("COMPUTER IS THE GRAND WINNER!!")
      break
    end

  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt("Thank you for playing.  Goodbye!")
