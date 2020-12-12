# /i - case insensitive
p /abc/i.match("abc") #=>abc
p /abc/i.match("Abc") #=>Abc
p /abc/i.match("aBc") #=>aBc
p /abc/i.match("ABC") #=>ABC

p /abc/.match("abc") #=>abc
p /abc/.match("Abc") #=>nil
p /abc/.match("aBc") #=>nil
p /abc/.match("ABC") #=>nil

# /m - multiline
str = "This (including\nwhat's in parens\n) take up three lines."
p /\(.*?\)/m.match(str) #=>"(including\nwhat's in parens\n)"
p /\(.*?\)/.match(str) #=>nil

# /x - ignore whitespaces unless it's escaped with a backslash
p (/
\((\d{3})\) # 3 digits inside literal parens(area code)
\s          # one space character
(\d{3})     # 3 digits (exchange)
-           # hyphen
(\d{4})     # 4 digits (second part of number)
/x.match("(123) 445-4567"))
