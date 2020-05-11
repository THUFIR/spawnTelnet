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



proc ::cities::listCities {} {


set c {{x} {y} {z}}

foreach i {a b c} { 
    puts $i;
}
puts "end listem"

}

proc ::cities::list {} {


puts "list.."

set a(0) "11"
set a(1) "10"
set a(2) "20"
set a(3) "30"
set a(4) "40"


foreach {key value} [array a city] {
        puts $city
}




return [array get a]
}
