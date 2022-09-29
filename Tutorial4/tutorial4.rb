# set array size to 10
array = Array.new(10)
# ask user to enter array length 
puts " Enter array length:"
array_length = gets.chomp()
if array_length.to_i > 10    # set default 10 if array_length > 10
  array_length = 10
end
array = Array.new(array_length.to_i)

# ask user to enter animal name
animal_array = []
array.each do |name|
  puts "Enter animal name:"
  name = gets.chomp()
  animal_array << name
  if animal_array.count() == array.length()
    break
  end
 
end
# print sorted animal_array
puts "#{animal_array.sort()}"
# print each array value count
puts"Animal Count: #{animal_array.count()}"
animal_array.each do |name|
 
  puts "Name:#{name} -> word_length:#{name.length()}"
end

# remove duplicate array
unique_array = animal_array.uniq()
puts "#{unique_array}"
# reverse array
puts "#{unique_array.reverse()}"




