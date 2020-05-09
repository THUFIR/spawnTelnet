package provide weather  1.0
package require Expect

namespace eval ::wunderground {
}


proc ::wunderground::connect {city} {
    variable telnet [spawn telnet rainmaker.wunderground.com]
    parse $city
}

proc ::wunderground::parse {city} {
    variable telnet
    puts "getting weather for $city"
    expect -i $telnet -nocase "Press Return to continue:"
    # You *might* need inter_return instead of return; the documentation isn't clear
    interact -i $telnet "\004" return
}
