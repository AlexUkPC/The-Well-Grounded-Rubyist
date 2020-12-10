color = %w(red orange yello green blue indigo violet)
p color.grep(/o/)

miscellany = [75, "hello", 10...20, "goodbye"]
p miscellany.grep(String)
p miscellany.grep(50..100)

p color.grep(/o/) { |color| color.capitalize }
