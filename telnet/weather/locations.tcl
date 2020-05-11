package provide locations 1.0

namespace eval ::cities {
}

proc ::cities::listCities {} {


set cities {{x} {y} {z}}

puts "locations\n--------\n$cities"

return $cities
}
