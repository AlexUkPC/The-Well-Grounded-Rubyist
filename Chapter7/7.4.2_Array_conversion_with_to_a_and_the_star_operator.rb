def combine_name(first_name, last_name)
  first_name + " " + last_name
end

name = ["David", "Black"]
puts combine_name(*name)
