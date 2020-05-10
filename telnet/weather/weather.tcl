package provide weather  1.0
package require Expect

namespace eval ::wunderground {
}

#works
proc ::wunderground::noControlFlow {city} {
    variable telnet [spawn telnet rainmaker.wunderground.com]
    puts "getting weather for $city"
    interact
}



#hangs
proc ::wunderground::connect {city} {
    variable telnet [spawn telnet rainmaker.wunderground.com]
    puts "getting weather for $city"
    parse $city
}


proc ::wunderground::parse {city} {
    puts "received $city"
    variable telnet

#    interact $telnet
	# "\004" return
    interact
}

#works
proc ::wunderground::old {city} {
    variable telnet
    puts "getting weather for $city"
    expect -i $telnet -nocase "Press Return to continue:"
    # You *might* need inter_return instead of return; the documentation isn't clear
    interact -i $telnet "\004" return
}
