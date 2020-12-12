# use tap method to deal with nil case instead of changing the core functionality of gsub!
p "Hello".tap { |string| puts string.upcase }.reverse

string = "Hello there!"
p string.tap { |str| str.gsub!(/zzz/, "xxx") }
