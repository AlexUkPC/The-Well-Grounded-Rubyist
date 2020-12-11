array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each_slice(3) { |slice| p slice }
array.each_cons(3) { |cons| p cons }
