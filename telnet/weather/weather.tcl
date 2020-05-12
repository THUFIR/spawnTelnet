package provide weather  1.0
package require Expect

namespace eval ::wunderground {
}

#works
proc ::wunderground::noControlFlow {city} {
    puts "getting weather for $city"

    variable telnet [spawn telnet rainmaker.wunderground.com]


    expect "Press Return to continue:"
    send "\r"

    log_file foo.log


    expect "Press Return for menu:"
    send "\r"


    #assuming actually a dictionary of cities
    expect "or enter 3 letter forecast city code--"
    send "$city\r"

    expect "WEATHER UNDERGROUND MAIN MENU"
    send "1\r"

    expect "CITY FORECAST MENU"
    send "1\r"


    expect "Enter 3-letter city code:"
    send "$city\r"

    expect "Press Return to continue, M to return to menu, X to exit:"
    send "M\r"


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

