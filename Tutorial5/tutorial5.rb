require 'date'
def return_name (d_num)
  if d_num == 0
    print "Sunday,"
  elsif d_num == 1
    print "Monday,"
  elsif d_num == 2
    print "Tuesday,"
  elsif d_num == 3
    print "Wednesday,"
  elsif d_num == 4
    print "Thursday,"
  elsif d_num == 5
    print "Friday,"
  elsif d_num == 6
    print "Saturday,"
  end
end


current_date = Date.today
puts "Current day:"
puts return_name(current_date.wday)
puts "Last 5 days:"
5.times do
  current_date = current_date.prev_day
  return_name(current_date.wday)
end


