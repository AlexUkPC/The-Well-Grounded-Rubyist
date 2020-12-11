p /((a)((b)c))/.match("abc")

re = %r{(?<first>\w+)\s((?<middle>\w\.)\s+)(?<last>\w+)}
p m = re.match("David A. Black")
p m[:first]
p m.named_captures

re = /(?<first>\w{3})\s+((?<last>\w{3},?\s?)(?<suffix>\w+\.?)?)/
p re.match("Joe Leo III")
p m = re.match("Joe Leo, Jr.")
p m.named_captures
p m = re.match("Joe Leo")
p m[:suffix]
