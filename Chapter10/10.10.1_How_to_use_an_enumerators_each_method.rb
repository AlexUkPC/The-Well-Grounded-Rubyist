array = %w(cat dog rabbit)
p e = array.map
p e.each { |animal| animal.capitalize }

h = { cat: "feline", dog: "canine", cow: "bovine" }
p h.select { |key, value| key =~ /c/ }

p e = h.to_enum(:select)
p e.each { |key, value| key =~ /c/ }

p e = h.to_enum
p h.each { }
p e.each { }

p e.select { |key, value| key =~ /c/ }
