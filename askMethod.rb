def ask
  while true
    puts "Do you like me?"
    reply = gets.chomp.downcase
    if reply == "yes"
      return true
    end
    if reply == 'no'
      return false
    end
    puts "Please enter yes or no only please."
  end
end

puts ask
