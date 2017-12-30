counter = 99
while counter >= 0
  if counter == 0
    puts ("No more bottles of beer on the wall, no more bottles of beer.")
    puts ("Go to the store and buy some more, 99 bottles of beer on the wall")
    break
  end
  puts (counter.to_s.capitalize + " bottles of beer on the wall, " + counter.to_s + " bottles of beer")
  puts ("Take one down and pass it around, " + counter.to_s + " bottles on the wall.")
  puts " "
  counter = counter - 1

end
