p (%w(joe joe david matz david matz joe).group_by { |name| name })
p (%w(joe joe david matz david matz joe).group_by(&:itself))

def filter_arr(arr, method = :itself)
  arr.public_send(method)
end

a = [1, 1, 2, 2, 3, 5, 6]
p (filter_arr(a, :uniq))
p (filter_arr(a))

p ("Ruby".yield_self { |str| str + " Roundtable" })
"Ruby".tap { |str| puts str + " Roundtable" }

add_newline = ->(str) { str + "\n" }
welcome = ->(str) { "Welcome, " + str.upcase + "!" }
p ("joe".yield_self(&welcome).yield_self(&add_newline) + "We're glad you're here!")

p (3.yield_self.class)

p ((1..10).yield_self { |r| r.member?(rand(15)) })
p ((rand(10) + 1).yield_self { |x| x.odd? ? x + 1 : x })
