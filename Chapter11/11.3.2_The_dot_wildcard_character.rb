p /.ejected/.match?("dejected") #=>true
p /.ejected/.match?("rejected") #=>true
p /.ejected/.match?("%ejected") #=>true
p /.ejected/.match?("8ejected") #=>true

p /[dr]ejected/.match?("dejected") #=>true
p /[dr]ejected/.match?("rejected") #=>true
p /[dr]ejected/.match?("%ejected") #=>false
p /[dr]ejected/.match?("8ejected") #=>false

p string = "ABC3934 is a hex number"
p string =~ %r{[^A-Fa-f0-9]} #=>7
p string[(string =~ %r{[^A-Fa-f0-9]})..-1] #=> is a hex number
p string[0...(string =~ %r{[^A-Fa-f0-9]})] #=>ABC3934
