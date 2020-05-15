package provide locations 1.0

namespace eval ::cities {
}



proc ::cities::dictionary {} {
	set cities {1 nyc 2 lax 3 chi}
return $cities
}

proc ::cities::listCities {} {


set cities {}
lappend cities red
lappend cities green


lpop cities

return $cities
}
