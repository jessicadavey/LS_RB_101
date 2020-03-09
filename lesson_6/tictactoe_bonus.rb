require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

MOVES_FIRST = 'Choose' # Can also be hard coded to 'Player' or 'Computer'

def prompt(msg)
  puts "=>#{msg}"
end

def joinor(array, delim=", ", conjunction="or")
  case array.size
  when 0
    ""
  when 1
    array.join
  when 2
    array.join(" #{conjunction} ")
  when 3..nil
    array[-1] = "#{conjunction} " + array[-1].to_s
    array.join(delim)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts " You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def reset_scores!(scr)
    scr['Player'] = 0
    scr['Computer'] = 0
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def at_risk_square(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
      return (empty_squares(brd) & line).first
    end
  end
  
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
      return (empty_squares(brd) & line).first
    end
  end
  nil
end

def computer_places_piece!(brd)
  square = nil
  if at_risk_square(brd)
    square = at_risk_square(brd)
  elsif empty_squares(brd).include?(5)
    square = 5
  else
    square = empty_squares(brd).sample
  end
    brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def detect_overall_winner(scr)
  if scr['Player'] == 5
    'Player'
  elsif scr['Computer'] == 5
    'Computer'
  else
    nil
  end
end

def overall_winner?(scr)
  !!detect_overall_winner(scr)
end

def display_overall_scores(scr)
  prompt "Current score:"
  prompt "Player - #{scr['Player']}, Computer - #{scr['Computer']}\n\n"
end

# Initialize Overall Scores:
scores = {}
reset_scores!(scores)

loop do
  board = initialize_board
  
  choice = ""
  if MOVES_FIRST == 'Choose'
    loop do
      prompt "Would you like to go first? (y/n)"
      choice = gets.chomp
      break if choice.downcase.start_with?('y') || choice.downcase.start_with?('n')
      prompt "Please answer y or n."
    end
  end
  
  loop do

    if MOVES_FIRST == 'Player' || choice.chr.downcase == 'y'
      display_board(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
  
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    elsif MOVES_FIRST =='Computer' || choice.chr.downcase == 'n'
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      
      display_board(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
      
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    scores[detect_winner(board)] += 1
  else
    prompt "It's a tie!"
  end
  
  display_overall_scores(scores)
  
  if overall_winner?(scores)
    prompt "#{detect_overall_winner(scores)} is the overall winner!"
    reset_scores!(scores)
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe!  Goodbye!"
