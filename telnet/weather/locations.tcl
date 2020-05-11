package provide locations 1.0

namespace eval ::cities {
}



proc ::cities::dictionary {} {


set names [dict create 1 John 2 Mary 3 Paul]
#1 John 2 Mary 3 Paul
dict append names 4 Fred
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
