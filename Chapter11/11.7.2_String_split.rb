p "Ruby".split(//)

line = "first_name=david;last_name=black;country=usa"
p record = line.split(/=|;/)

data = []
record = Hash[*line.split(/=|;/)]
p record
data.push(record)
p data

p "a,b,c,d,e".split(/,/, 3)
