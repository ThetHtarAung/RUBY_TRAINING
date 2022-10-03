puts "Enter title:"
title = gets.chomp()
puts "Enter notes"
note = gets.chomp()
puts "Want to save/cancel?"
decision = gets.chomp()

if decision === "save"
  File.open('note.txt', 'w') do |f|   
    f.syswrite(title)   
    f.syswrite(note)
  end
  puts "Want to open (y/n): "
  open = gets.chomp()

  if open === "y"
    puts "File name (filename.txt):"
    file_name = gets.chomp()
    
    if File.exists?(file_name)
      aFile = File.new(file_name, "r")   
      content = aFile.read()   
      puts content     
    else
      puts "file not found"
    end  
  end  
else
  puts "Cancel"
end