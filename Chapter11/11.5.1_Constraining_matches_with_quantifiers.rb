#Zero or one
re = /Mrs?\.?/
p re.match("Mr")
p re.match("Mrs")
p re.match("Mr.")
p re.match("Mrs.")
p re.match("4d3Mrs.")
p re.match("4d3s.")

re = /\d\d?/
p re.match("1")
p re.match("55")
p re.match("03")
p re.match("032")
p re.match("a")

#Zero or more
re = /<\s*\/\s*poem\s*>/
p re.match("</poem>")
p re.match("< /poem>")
p re.match("</    poem>")
p re.match("</poem      >")
p re.match("</oem      >")

#One or more
re = /\d+/
p re.match?("There's a digut here somewh3re")
p re.match?("No digits here. Move along.")
p re.match?("Digit-R-Us 2345")
p /(\d+)/.match("Digit-R-Us 2345")[1]
