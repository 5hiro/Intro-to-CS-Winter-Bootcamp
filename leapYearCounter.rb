puts ("Please enter the starting year.")
start = gets.chomp
start = start.to_i
puts ("Please enter the ending year.")
last = gets.chomp
last = last.to_i + 1

puts ('')
puts ('The following years are leap years:  ')

while start != last
  if start % 400 == 0
    puts (start)
  elsif start % 4 == 0
    if start % 100 != 0
      puts (start)
    end
  end
  start = start + 1
end
