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
