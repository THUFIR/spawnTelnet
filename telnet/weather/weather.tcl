package provide weather  1.0
package require Expect

namespace eval ::wunderground {
}

#works
proc ::wunderground::noControlFlow {city} {
    variable telnet [spawn telnet rainmaker.wunderground.com]
    puts "getting weather for $city"
    interact {
	"/n" {send "nyc"}
    }
}



#seems to run
proc ::wunderground::connect {city} {
    global spawn_id
    variable telnet [spawn telnet rainmaker.wunderground.com]
    puts "getting weather for $city"
    parse $city
}


#hangs after the puts; no telnet connection output
proc ::wunderground::parse {city} {
    global spawn_id
    puts "received $city"
    variable telnet
    interact -i $telnet
}

#works
proc ::wunderground::old {city} {
    variable telnet
    puts "getting weather for $city"
    expect -i $telnet -nocase "Press Return to continue:"
    # You *might* need inter_return instead of return; the documentation isn't clear
    interact -i $telnet "\004" return
}
