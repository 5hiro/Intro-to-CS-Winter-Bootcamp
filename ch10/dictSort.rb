def dict_sort array
  recursive_dict_sort array, []
end

def recursive_dict_sort not_sorted, sorted
  if not_sorted.length <= 0
    return sorted
  end
  first = not_sorted.pop
  not_yet_sorted = []

  not_sorted.each do |test|
    if test.downcase < first.downcase
      not_yet_sorted.push first
      first = test
    else
      not_yet_sorted.push test
    end
  end
  sorted.push first

  recursive_dict_sort not_yet_sorted, sorted
end

puts(dict_sort(['can', 'feeling', 'singing', 'like', 'A', 'can']))
