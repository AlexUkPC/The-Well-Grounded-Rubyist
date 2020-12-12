# don't do this because it trigger an infinite loop!
class String
  alias __old_gsub_bang__ gsub!

  def gsub!(*args, &block)
    __old_gsub_bang__(*args, &block)
    self
  end
end

string = "Hello there!"
p string
p string.gsub!(/e/, "E")
p string
puts "==========="
string = "Hello there!"
p string
p string.gsub!(/zzz/, "xxx")
p string
puts "==========="
string = "Hello there!"
p string
p string.gsub!(/e/, "E").reverse!
p string
puts "==========="
string = "Hello there!"
p string
p string.gsub!(/zzz/, "xxx").reverse!
p string
puts "==========="

states = { "NY" => "New York", "NJ" => "New Jersey", "ME" => "Maine" }
p states
string = "Eastern states include NY, NJ, and ME."
if string.gsub!(/\b([A-Z]{2})\b/) { states[$1] }
  puts "Substitution occured"
else
  puts "String unchanged"
end
string = "Eastern states include NY, NJ, and ME."
while string.gsub!(/\b([A-Z]{2})\b/) { states[$1] }
  puts "Replacing #{$1} with #{states[1]}..."
end
