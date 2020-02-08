# Assignment: Mortgage / Car Loan Calculator


## Problem

Build a program to calculate monthly loan payments, given:

**Get these as user input:**
- The total amount of the loan
  - integer - convert to float for calculations
  - must be positive, numeric
- The annual percentage rate
  - as a percentage, e.g., 12%
  - can convert to decimal float (i.e., 0.12)
  - must be positive, numeric
- the loan duration
  - in years...as a decimal float (30 1/2 years == 30.5 years)
  - must be positive, numeric

**Formula (given in problem):**
```ruby
m = p * (j / (1 - (1 + j)**(-n)))
```
- m = monthly payment
  - this is what gets calculated
- p = loan amount
  - input from user
- j = monthly interest rate
  - annual percentage rate (decimal representation) / 12
- n = loan duration in months
  - loan duration * 12

## Examples / Tests
```ruby
loan_amount = 5000
annual_percentage_rate = 10%
loan_term_in_years = 5

monthly_payment = 106.24
--------
loan_amount = 150_000
annual_percentage_rate = 7%
loan_term_in_years = 30

monthly_payment = 997.95
--------
loan_amount = 1000
annual_percentage_rate = 20%
loan_term_in_years = 10

monthly_payment = 19.33

```
## Data Structures
```ruby
User Input:

loan_amount = positive, numeric, non-zero
annual_percentage_rate = positive, numeric, non-zero (%)
loan_term_in_years = positive, numeric, non-zero

Output: 

monthly_payment = numeric

Rules:

Convert all to floats for float division

annual_interest_rate = annual_percentage_rate / 100
monthly_interest_rate = annual_interest_rate / 12
loan_term_in_months = loan_term_in_years * 12

monthly_payment = loan_amount * (montly_interest_rate / (1 - (1 + monthly_interest_rate)**(-(loan_term_in_months))))
```


## Algorithm

## Code
[Mortage Calculator](/mortgage_calculator.rb)