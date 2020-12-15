string = "Test string"
# def string.surprise! #=>all bang methods are matched by non-bang methods, but to test in case any exist uncomment this
# end
methods = string.methods
bangs = string.methods.grep(/.!/)
unmatched = bangs.reject do |b|
  methods.include?(b[0..-2].to_sym)
end
if unmatched.empty?
  puts "All bang methods are matched by non-bang methods."
else
  puts "Some bang methods have no non-bang partner:"
  puts unmatched
end
