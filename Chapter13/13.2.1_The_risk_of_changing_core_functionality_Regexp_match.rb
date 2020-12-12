# it looks like it doesn't do the same damage as in book
#TODO investigate further because it seem to work ok now
class Regexp
  alias __old_match__ match

  def match(string)
    __old_match__(string) || []
  end
end

string = "A test string"
re = /A (sample) string/
p substring = re.match(string)[1]

p /abc/.match("X")[1]
if /abc/.match("X")[1]
  puts "da"
else
  puts "nu"
end
