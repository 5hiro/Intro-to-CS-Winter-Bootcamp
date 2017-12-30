input = gets.chomp

loop do
  if input == "BYE"
    puts ("WHAT WAS THAT DARLING?! DO YOU WANT MORE FOOD?!")
    input = gets.chomp
    if input == "BYE"
      puts ("DID YOU SAY YOU WANTED MORE POTATOES?! WE HAVE PLENTY MORE!")
      input = gets.chomp
      if input == "BYE"
        puts ("GOODBYE DARLING! YOU COME TO OLD GRANNIE NOW IF YOU ARE EVER HUNGRY!")
        break
      end
    end
  elsif input == input.upcase
    year = rand(1930..1950)
    puts ("NO, NOT SINCE " + year.to_s + "!")
    input = gets.chomp
  else
    puts ("HUH!? SPEAK UP SONNY!")
    input = gets.chomp
  end
end
