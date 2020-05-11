package provide locations 1.0

namespace eval ::cities {
}



proc ::cities::dictionary {} {

dict set cities alice bob

return $cities
}

proc ::cities::listCities {} {


set cities {}
lappend cities red
lappend cities green


lpop cities 

return $cities
}
