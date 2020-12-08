array = [1, 2, [3, 4, [5], [6, [7, 8]]]]
p array
p array.flatten
p array.flatten(1)
p array.flatten(2)

p [1, 2, 3, 4].reverse

p ["abc", "def", 123].join
p ["abc", "def", 123].join(", ")

a = %w(one two three)
p a * "-"

p [1, 2, 3, 1, 4, 3, 5, 1].uniq

p ["06511", "08902", "08902", nil, "10027", "08902", nil, "06511"].compact
