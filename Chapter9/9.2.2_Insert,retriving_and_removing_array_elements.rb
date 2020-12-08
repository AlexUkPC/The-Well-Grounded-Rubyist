a = %w(red orange yellow purple gray indigo violet)
p a
p a[3, 2]
a[3, 2] = "green", "blue"
p a

a = %w(red orange yellow purple gray indigo violet)
p a
p a[3..5]
a[1..2] = "green", "blue"
p a

array = %w(the dog ate the cat)
p array.values_at(0, 3)

arr = [[1], 2, 3, [4, 5]]
p arr
p arr[0]
p arr[3][0]
p arr.dig(3, 0)

a = [1, 2, 3, 4]
p a
a.unshift(0)
p a
a = [1, 2, 3, 4]
a.push(5)
p a
a = [1, 2, 3, 4]
a << 5
p a
a.pop
p a
a.shift
p a
