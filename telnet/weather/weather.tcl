package provide weather  1.0
package require Expect

namespace eval ::tutstack {
}

proc ::tutstack::parse {city} {
puts "getting weather for $city"
expect -nocase "Press Return to continue:"
#interact \004 return
interact \004 return
}

proc ::tutstack::connect {city} {
spawn telnet rainmaker.wunderground.com
set telnet $spawn_id
#interact
parse $city
}


