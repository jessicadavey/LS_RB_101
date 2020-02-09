def valid?(input)
  input.to_f > 0
end

def message(message)
  puts "=> #{message}"
end

message "Welcome to the Loan Payment Calculator!"
message "--------------------------------------"

loop do
  loan_amount = ""
  annual_percentage_rate = ""
  loan_term_in_years = ""

  loop do
    loop do
      message "What is the total amount of the loan in dollars ($)?"
      loan_amount = gets.chomp
      break if valid?(loan_amount)
      message "Invalid input.  Please enter a positive number."
    end

    loop do
      message "What is the interest APR, as a percent (%)?"
      annual_percentage_rate = gets.chomp
      break if valid?(annual_percentage_rate)
      message "Invalid input.  Please enter a positive number."
    end

    loop do
      message "What is the loan term in years?"
      loan_term_in_years = gets.chomp
      break if valid?(loan_term_in_years)
      message "Invalid input.  Please enter a positive number."
    end

    message "You have a $#{loan_amount} loan for #{loan_term_in_years} years,
    with an APR of #{annual_percentage_rate}%."
    message "Is this correct? (y/n)"
    answer = gets.chomp
    break if answer.downcase == 'y'

    message "Please re-enter."
  end

  loan_amount = loan_amount.to_f
  monthly_interest_rate = (annual_percentage_rate.to_f / 100) / 12
  loan_term_in_months = loan_term_in_years.to_f * 12

  monthly_payment = loan_amount * (monthly_interest_rate /
  (1 - (1 + monthly_interest_rate)**(-(loan_term_in_months))))

  message "Your monthly payment is:"
  message "$#{format('%02.2f', monthly_payment)}"

  message "Calculate again? (y/n)"
  answer = gets.chomp

  break unless answer.downcase == 'y'
end

message "Thank you for using the loan payment calculator.  Goodbye."
