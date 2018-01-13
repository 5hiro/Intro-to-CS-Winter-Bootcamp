def enumber number
  if number < 0
    return 'Please enter a non-negative number'
  end
  if number == 0
    return 'zero'
  end

  reporter = ''
  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  tens_only = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  illions = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15]]

  left = number

  while illions.length > 0
    illion_pair = illions.pop
    i_name = illion_pair[0]
    i_base = 10**illion_pair[1]
    current = left / i_base
    left = left - current*i_base

    if current > 0
      adder = enumber current
      reporter = reporter + adder + ' ' + i_name

      if left > 0
        reporter = reporter + ' '
      end
    end
  end

  current = left / 10
  left = left - current * 10

  if current > 0
    if ((current == 1) and (left > 0))
      reporter = reporter + tens_only[left - 1]
      left = 0
    else
      reporter = reporter + tens[current - 1]
    end
    if left > 0
      reporter = reporter + ' '
    end
  end

  current = left
  left = 0

  if current > 0
    reporter = reporter + ones[current - 1]
  end
  reporter
end

start = 5
current_number = start

while current_number > 1
  puts enumber(current_number).capitalize + ' bottles of beer on the wall, ' + enumber(current_number) + ' bottles of beer!'
  current_number = current_number - 1
  puts 'Take one down, pass it around. ' + enumber(current_number) + ' bottles of beer on the wall'
end

puts 'Two bottles of beer on the wall, two bottles of beer!'
puts 'Take one down, pass it around, one bottle of beer on the wall!'
puts 'One bottle of beer on the wall, one bottle of beer!'
puts 'Take one down, pass it around, no more bottles of beer on the wall!'
