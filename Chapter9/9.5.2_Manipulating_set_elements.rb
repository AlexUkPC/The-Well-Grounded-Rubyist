require "set"
tri_state = Set.new(["New Jersey", "New York"])
p tri_state
tri_state << "Connecticut"
p tri_state
tri_state << "Connecticut"
p tri_state
tri_state << "Pennsylvania"
tri_state.delete("Connecticut")
p tri_state

tri_state = Set.new(["Connecticut", "New Jersey", "New York"])
new_englang = ["Connecticut", "Maine", "Massachutsetts", "New Hampshire", "Rhode Island", "Vermont"]
state_set = Set.new(new_englang)
p state_set - tri_state
p state_set + tri_state
p state_set & tri_state
p state_set | tri_state
p state_set ^ tri_state
tri_state = Set.new(["Connecticut", "New Jersey"])
p tri_state.object_id
tri_state.merge(["New York"])
p tri_state.object_id
state_set = Set.new(["New York", "New Jersey"])
state_hash = { "Maine" => "ME", "Vermont" => "VT" }
p state_set.merge(state_hash.keys)
