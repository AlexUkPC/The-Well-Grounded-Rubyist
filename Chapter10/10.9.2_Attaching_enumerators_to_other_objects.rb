names = %w(David Black Yukihiro Matsumoto)
e = names.enum_for(:select)
p e.each { |n| n.include?("a") }

e = names.enum_for(:inject, "Names: ")
p e.each { |string, name| string << "#{name}..." }
