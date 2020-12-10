require "set"
new_englang = ["Connecticut", "Maine", "Massachutsetts", "New Hampshire", "Rhode Island", "Vermont"]
state_set = Set.new(new_englang)
p state_set

names = ["David", "Yukihiro", "Chad", "Amy"]
name_set = Set.new(names) { |name| name.upcase }
p name_set
