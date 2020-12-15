def find_multiples_of_3(arr)
  arr.select { |el| el % 3 == 0 }
end

p (find_multiples_of_3([-3, 3, 4, 5, 6, 8, 9, 10, 13]))

def find_multiples_of_5(arr)
  arr.select { |el| el % 5 == 0 }
end

p (find_multiples_of_5([-3, 3, 4, 5, 6, 8, 9, 10, 13]))

find_multiples = ->(x, arr) { arr.select { |el| el % x == 0 } }
p find_multiples_of = find_multiples.curry
p find_multiples_of_3 = find_multiples_of.(3)
p find_multiples_of_5 = find_multiples_of.(5)
p (find_multiples_of_3([-3, 3, 4, 5, 6, 8, 9, 10, 13]))
p (find_multiples_of_5([-3, 3, 4, 5, 6, 8, 9, 10, 13]))

add = ->(a, b, c) { a + b + c }
fun = add.curry
p fun.(1, 2, 3)
p fun.(1).(2).(3)
fun2 = fun.(1)
p fun2.(5, 8)
fun3 = fun.(1, 2)
p fun3.(4)

sum_all = ->(*nums) { nums.reduce(:+) }
p sum_all.curry.(6, 7, 8)
sum_at_least_four = sum_all.curry(4)
p (sum1 = sum_at_least_four.(3, 4))
p (sum2 = sum1.(5))
p sum3 = sum2.(7)

#diffrent type of notation
p fun.(9, 8, 6)
p fun.call(9, 8, 6)
p fun[9, 8, 6]
p fun[9, 8][6]

#methods curried
def add(a, b, c)
  a + b + c
end

funx = method(:add).curry
p funx.(3, 3, 3)
