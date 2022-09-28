space=" "
space_count= 6
11.times do |row|

  if row < 6
    space_count -=1
    star = row *2 +1
    print space * space_count

  else 
    space_count += 1
    star = (11-1-row)*2 +1
    print space * space_count
  end
  puts '*' * star
end

