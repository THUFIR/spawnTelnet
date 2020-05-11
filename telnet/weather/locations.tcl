package provide locations 1.0

namespace eval ::cities {
}



proc ::cities::dictionary {} {

set cities {a b c}

return $cities
}

proc ::cities::listCities {} {


set cities {}
lappend cities red
lappend cities green


lpop cities 

return $cities
}
