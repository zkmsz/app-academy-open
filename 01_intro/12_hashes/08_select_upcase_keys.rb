# Select Upcase Keys

# Write a method select_upcase_keys that takes in a hash and returns
# a new hash containing key-value pairs of the original hash that had
# uppercase keys. You can assume that the keys will always be strings.
def select_upcase_keys(hash)
  hash.select { |k, _| k == k.upcase }
end

# prettier-ignore
print select_upcase_keys(
  { "make" => "Tesla", "MODEL" => "S", "Year" => 2018, "SEATS" => 4 }
)
# => {"MODEL"=>"S", "SEATS"=>4}
puts

# prettier-ignore
print select_upcase_keys(
  {
    "DATE" => "July 4th",
    "holiday" => "Independence Day",
    "type" => "Federal"
  }
)
# => {"DATE"=>"July 4th"}
puts
