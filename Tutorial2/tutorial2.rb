puts "Enter your birthdate(dd/mm/yyyy):"
date = gets.chomp
date_array = date.split '/'
time = Time.new
current_year = time.year
age = current_year - date_array[2].to_i
if age < 19
  puts "#{age},you are a child"
else
  puts "#{age},you are an adult"
end

