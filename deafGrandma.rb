input = gets.chomp

loop do
  if input == "BYE"
    puts ("GOODBYE DARLING! MAKE SURE YOU EAT PROPERLY!")
    break
  elsif input == input.upcase
    year = rand(1930..1950)
    puts ("NO, NOT SINCE " + year.to_s + "!")
    input = gets.chomp
  else
    puts ("HUH!? SPEAK UP SONNY!")
    input = gets.chomp
  end
end
