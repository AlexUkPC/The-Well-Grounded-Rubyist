# ^ beginin of line
comment_regexp = /^\s*#/
p comment_regexp.match("    #Pure comment!") #=>"    #"
p comment_regexp.match("  x = 1   # Code plus comment!") #=>nil

# $ end of line
p /\.$/.match("one\ntwo\nthree.\nfour") #=>"."

# \A begining of string
p /\AFour score/.match("Four s") #=>nil
p /\AFour score/.match("Four score") #=>"Four score"
p /\AFour score/.match("Four score .dsa. das.ds..asd") #=>"Four score"
p /\AFour score/.match("ASDFour score") #=>nil

# \z end of string
p /from the earth.\z/.match("from the earth.") #=> "from the earth"

p /from the earth.\z/.match("Something from the earth.") #=> "from the earth"
p /from the earth.\z/.match("from the earth. ans") #=> nil

# \Z end of sting, excluding a final newline characre, if any
p /from the earth.\Z/.match("from the earth.\n") #=> "from the earth"
p /from the earth.\Z/.match("from the earth.\nceva") #=> nil
p /from the earth.\Z/.match("from the earth.") #=> "from the earth"

# \b word boundry
p /\b\w+\b/.match("!!!word***") #=>"word"
p /\b\w+\b/.match("word***") #=>"word"
p /\b\w+\b/.match(".word?") #=>"word"
p /\b\w+\b/.match(".word ceaa") #=>"word"
p /\b\w+\b/.match(".wordceaa") #=>"wordceaa"
p /\b\w+\b/.match("awordceaa") #=>"awordceaa"

#lookahead assertions ?=
str = "123 456. 789"
p m = /\d+(?=\.)/.match(str) #=>456

#lookbehind assertions ?<=
p re = /(?<=David )BLACK/.match("David BLACK") #=>"BLACK"
p re = /(?<=David )BLACK/.match("David Black") #=>nil
p re = /(?<=David )BLACK/.match("aaaDavid BLACK") #=>"BLACK"
p re = /(?<=David )BLACK/.match("aaaDavid Black") #=>nil

p re = /(?<!David )BLACK/.match("aaaDavid BLACK") #=>nil
p re = /(?<!David )BLACK/.match("David BLACK") #=>nil
p re = /(?<!David )BLACK/.match("John BLACK") #=>"BLACK"

###. ?:
str = "abc def ghi"
p m = /(abc) (?:def) (ghi)/.match(str) #=> "abc def ghi" 1:"abc" 2:"ghi"
str = "abc ddd ghi"
p m = /(abc) (?:def) (ghi)/.match(str) #=> nil

# conditional matches
re = /(a)?(?(1)b|c)/
p re.match("ab") #=>"ab" 1:"a"
p re.match("b") #=>nil
p re.match("ac") #=>"c" 1:nil
p re.match("c") #=>"c" 1:nil
p re.match("bc") #=>"c" 1:nil
p re.match("cc") #=>"c" 1:nil
p re.match("az") #=>nil

re = /(?<first>a)?(?(<first>)b|c)/
