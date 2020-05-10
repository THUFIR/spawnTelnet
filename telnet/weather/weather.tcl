package provide weather  1.0
package require Expect

namespace eval ::wunderground {
}



proc ::wunderground::parse {city} {
    global spawn_id
    puts "getting weather for $city"
    expect -nocase "Press Return to continue:"
    # You *might* need inter_return instead of return; the documentation isn't clear
    #interact "\004" return
    interact
}

proc ::wunderground::connect {city} {
    global spawn_id
    spawn telnet rainmaker.wunderground.com
    set telnet $spawn_id
    parse $city
}
