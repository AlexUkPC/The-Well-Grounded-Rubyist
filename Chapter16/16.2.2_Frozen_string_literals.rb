# frozen_string_literal: true
str = "a frozen string"
new_str = "a frozen string"
p new_str.object_id == str.object_id
#str << ", brr!"# can't modify frozen String: "a frozen string"

new_str2 = str.dup
p new_str2.object_id == str.object_id
p (new_str2 << ", brr!")

str2 = String.new("an unfrozen string")
p str2.frozen?
p (str2 << ", heating up!")

str3 = "frozen!"
p str3.frozen?
unfrozen_str = +str3
p unfrozen_str.frozen?
