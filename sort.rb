def sort array
  recursive_sort array, []
end

def recursive_sort not_sorted, sorted
  if not_sorted.length <= 0
    return sorted
  end

  first = not_sorted.pop
  not_yet_sorted = []

  not_sorted.each do |test|
    if test < first
      not_yet_sorted.push first
      first = test
    else
      not_yet_sorted.push test
    end
  end

  sorted.push first
  recursive_sort not_yet_sorted, sorted
end

puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
