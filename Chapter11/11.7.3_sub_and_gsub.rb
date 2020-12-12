p "typigraphical error".sub(/i/, "o")
p "capitalize the first vowel".sub(/[aeiou]/) { |s| s.upcase }

p "capitalize every word".gsub(/\b\w/) { |s| s.upcase }

p "aDvid".sub(/([a-z])([A-Z])/, '\2\1')
p "double every word".gsub(/\b(\w+)/, '\1 \1')
