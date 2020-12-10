require "set"
small_states = Set.new(["Connecticut", "Delaware", "Rhode Island"])
tiny_states = Set.new(["Delaware", "Rhode Island"])
p tiny_states.subset?(small_states) #=>true
p small_states.superset?(tiny_states) #=>true

super_tiny_states = Set.new(["Delaware", "Rhode Island"])
p super_tiny_states.subset?(tiny_states) #=>true
p super_tiny_states.proper_subset?(tiny_states) #=>false
