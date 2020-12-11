class String
  def ^(key)
    kenum = key.each_byte.cycle
    each_byte.map { |byte| byte ^ kenum.next }.pack("C*")
  end
end

str = "Nice little string."
key = "secret!"
p x = str ^ key
p orig = x ^ key
