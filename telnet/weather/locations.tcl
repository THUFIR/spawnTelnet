package provide locations 1.0

namespace eval ::cities {
}

proc ::cities::loadCities {} {

array set cities {
	nyc 1
	lon 2
}


puts "\n\ncities"
puts "------"
foreach {c count} [array get cities ] {
   puts "$c" 
}

}


proc ::cities::list {} {

set a(0) "11"
set a(1) "10"
set a(2) "20"
set a(3) "30"
set a(4) "40"

return [array get a]
}
