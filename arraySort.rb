puts ("Hello.  What words would you like to input?")
input = gets.chomp
reporter = []

loop do
  if input == ""
    puts (reporter.sort)
    break
  else
    reporter.push input
    input = gets.chomp
  end
end
