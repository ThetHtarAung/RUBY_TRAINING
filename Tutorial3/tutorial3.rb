loop do 
  puts "Enter first number:"
  fist_number = gets.chomp()
  puts "Choose operators(+,-,*,/)"
  operator = gets.chomp()
  puts "Enter Second number:"
  second_number = gets.chomp()
  
  if operator ==='+'  #add two numbers
    result = fist_number.to_i + second_number.to_i

  elsif operator === '-' #minus two numbers
    result = fist_number.to_i  - second_number.to_i 

  elsif operator === '*' #multiply two numbers
    result = fist_number.to_i  * second_number.to_i 

  elsif operator === '/' #divide two numbers

    while second_number === '0' do
      puts "Can't divide with 0, Enter second number again:"
      second_number = gets.chomp()
    end
    result = fist_number.to_i  / second_number.to_i 
  end
  puts "Result: #{result}"
  puts "Make decisions(stop / continue)?:"
  decision = gets.chomp()
  break if decision === 'stop'
end
