h = Hash.new
p h["no such key"] # =>nil
h = Hash.new(0)
p h["no such key"] # =>0
h = Hash.new { |hash, key| hash[key] = 0 }
p h
p h["new key"]
p h
