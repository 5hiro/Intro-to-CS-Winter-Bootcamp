def newRoman number
  thousands = (number / 1000)
  hundreds = (number % 1000 / 100)
  tens = (number % 100 / 10)
  ones = (number % 10)

  result = 'M' * thousands

  if hundreds == 9
    result = result + "CM"
  elsif hundreds == 4
    result = result + "CD"
  else
    result = result + "D" * (number % 100 / 50)
    result = result + "C" * (number % 500 / 100)
  end

  if tens == 9
    result = result + "XC"
  elsif tens == 4
    result = result + "XL"
  else
    result = result + "L" * (number % 100 / 50)
    result = result + "X" * (number % 50 / 10)
  end

  if ones == 9
    result = result + "IX"
  elsif ones == 4
    result = result + "IV"
  else
    result = result + "V" * (number % 10 / 5)
    result = result + "I" * (number % 5)
  end

  result
end

puts(newRoman(1999))
