string = "David A. Black"
puts string.upcase #=> DAVID A. BLACK
puts string.downcase #=>david a. black
puts string.swapcase  #=>dAVID a. bLACK

string = "david"
puts string.capitalize #=>David

string = "David A. Black"
puts string.rjust(25) #=>"            David A. Black"
puts string.ljust(25) #=>"David A. Black            "
puts string.rjust(25, ".") #=>"........David A. Black"
puts string.ljust(25, "><") #=>"David A. Black><><><>"
puts "The middle".center(20, "*") #=>"*****The middle*****"
puts "The middle".center(21, "*") #=>"*****The middle******"

string = "     David A. Black     "
puts string.strip #=>"David A. Black"
puts string.lstrip #=>"David A. Black     "
puts string.rstrip #=>"     David A. Black"

string = "David A. Black"
puts string.chop #=>David A. Blac
string = "David A. Black\n"
puts string.chomp #=>David A. Black
string = "David A. Black"
puts string.chomp("ck") #=>David A. Bla

string = "David A. Black"
string.clear
puts string #=>""

string = "(to be named later)"
string.replace("David A. Black")
puts string #=>David A. Black

puts "David A. Black".delete("abc") #=>Dvid A. Blk
puts "David A. Black".delete("^abc") #=>aac
puts "David A. Black".delete("a-e", "^c") #=>Dvi A. Blck

puts "David A. Black".crypt("34") #=>347OEY.7YRmio

puts "a".succ #=>b
puts "abc".succ #=>abd
puts "azz".succ #=>baa


