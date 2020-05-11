package provide locations 1.0

namespace eval ::cities {
}



proc ::cities::dictionary {} {


set names []
#1 John 2 Mary 3 Paul
dict append names Fred
dict append names paul
#1 John 2 Mary 3 Paul 4 Fred

return $names
}

proc ::cities::listCities {} {


set cities {}
lappend cities red
lappend cities green


lpop cities 

return $cities
}
