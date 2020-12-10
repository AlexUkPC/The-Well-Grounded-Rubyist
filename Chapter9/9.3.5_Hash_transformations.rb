h = Hash[1, 2, 3, 4, 5, 6]
p h
p h.select { |k, v| k > 1 }
p h.reject { |k, v| k > 1 }

h = { 1 => "one", 2 => "two" }
p h.invert
h = { 1 => "one", 2 => "more than one", 3 => "more than one" }
p h.invert

h.clear
p h
p ({ 1 => "one", 2 => "two" }.replace({ 10 => "ten", 20 => "twenty" }))
