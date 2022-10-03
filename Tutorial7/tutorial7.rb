class Person

  def initialize (name)

    @name = name
  end
  def print_name 

    puts "Name : #{@name}"
  end
end

class Student < Person
  def initialize (name,roll_number)
    @name = name
    @roll_number = roll_number
  end
  def print_roll

    puts "Roll-No : #{@roll_number}"
  end
end

puts "Choose (person/student)? :"
type = gets.chomp()
if type == "person" 

  puts "Enter your name : "
  name = gets.chomp()
  person = Person.new(name)
  person.print_name
else

  puts "Enter your name :"
  name = gets.chomp()
  puts "Enter your roll-number : "
  roll_number = gets.chomp()
  student = Student.new(name , roll_number )
  student.print_name
  student.print_roll
end

  
