table = ["Table of Contents", "Chapter 1:  Getting Started", "page  1",
"Chapter 2:  Numbers", "page  9", "Chapter 3:  Letters", "page 13"]

width = 50

puts (table[0].center(width))
puts (" ")
puts (table[1].ljust(width) + table[2].rjust(width/4))
puts (table[3].ljust(width) + table[4].rjust(width/4))
puts (table[5].ljust(width) + table[6].rjust(width/4))
