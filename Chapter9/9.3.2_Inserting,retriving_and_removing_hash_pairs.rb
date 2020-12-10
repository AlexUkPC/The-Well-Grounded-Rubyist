state_hash = { "Connecticut" => "CT",
               "Delaware" => "DE",
               "New Jersey" => "NJ",
               "Virginia" => "VA" }
state_hash["New York"] = "NY"
state_hash.store("Florida", "FL")
puts state_hash["New York"]
puts state_hash.fetch("Florida")
puts state_hash.fetch("Nebraska", "Unknown state")
p state_hash.values_at("New Jersey", "Delaware")
p (state_hash.fetch_values("New Jersey", "WHYOMING") do |key|
    key.capitalize
  end)

h = Hash.new
h["a"] = 1
h["a"] = 2
puts h["a"] # =>2

contacts = { john: {
  phone: "555-1234",
  email: "johna@example.com",
},
            eric: {
  phone: "555-1235",
  email: "eric@example.com",
} }
p contacts.dig(:eric, :email)
