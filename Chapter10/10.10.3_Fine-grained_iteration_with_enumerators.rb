name = %w(David Yukihiro)
e = name.to_enum
puts e.next
puts e.next
e.rewind
puts e.next
