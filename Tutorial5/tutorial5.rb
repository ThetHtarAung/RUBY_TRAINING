require 'date'
def return_name (day_num)
  if day_num == 0
    print "Sunday,"
  elsif day_num == 1
    print "Monday,"
  elsif day_num == 2
    print "Tuesday,"
  elsif day_num == 3
    print "Wednesday,"
  elsif day_num == 4
    print "Thursday,"
  elsif day_num == 5
    print "Friday,"
  elsif day_num == 6
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