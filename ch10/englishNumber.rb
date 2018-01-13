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

puts(enumber( 0))
puts(enumber( 9))
puts(enumber( 10))
puts(enumber( 11))
puts(enumber( 17))
puts(enumber( 72))
puts(enumber( 88))
puts(enumber( 100))
puts(enumber( 101))
puts(enumber( 121))
puts(enumber( 222))
puts(enumber( 5234))
puts(enumber( 999999))

#holy crap
