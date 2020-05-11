package provide locations 1.0

namespace eval ::cities {
}

proc ::cities::listCities {} {


set cities {}
lappend cities red
lappend cities green

return $cities
}
