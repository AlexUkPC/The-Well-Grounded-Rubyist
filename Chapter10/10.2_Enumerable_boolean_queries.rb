states = ["Connecticut", "Maine", "Massachutsetts", "New Hampshire", "Rhode Island", "Vermont", "Louisiana"]
puts states.include?("Louisiana") #=>true
puts states.all? { |state| state =~ / / } #=>false
puts states.any? { |state| state =~ / / } #=>true
puts states.one? { |state| state =~ /West / } #=>false
puts states.one? { |state| state =~ /New / } #=>true
puts "================================"
state_hash = { "Connecticut" => "CT",
               "Delaware" => "DE",
               "New Jersey" => "NJ",
               "Virginia" => "VA" }
puts state_hash.include?("Delaware") #=>true
puts state_hash.all? { |state, abbr| state =~ / / } #=>false
puts state_hash.one? { |state, abbr| state =~ /New/ } #=>true
puts state_hash.keys.one? { |state| state =~ / / } #=>true
