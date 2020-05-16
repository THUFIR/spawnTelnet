\package provide weather  1.0
package require Expect

namespace eval ::wunderground {
}

proc ::wunderground::noControlFlow {cities} {

    puts "\n\ngetting weather for [dict get $cities 1]\n\n"

    variable telnet [spawn telnet rainmaker.wunderground.com]



    expect "Press Return to continue:"
    send "\r"


    expect "or enter 3 letter forecast city code--"
    send "[dict get $cities 1]\r"



###########

    puts "\n\ngetting weather for [dict get $cities 2]\n\n"


    expect "Press Return to continue, M to return to menu, X to exit:"
    send "m\r"

    expect "Selection:"
    send "1\r"

    expect "Enter 3-letter city code:"
    send "[dict get $cities 2]\r"

##########

    puts "\n\ngetting weather for [dict get $cities 3]\n\n"


    expect "Press Return to continue, M to return to menu, X to exit:"
    send "m\r"

    expect "Selection:"
    send "1\r"

    expect "Enter 3-letter city code:"
    send "[dict get $cities 3]\r"


###########

    expect "Press Return to continue, M to return to menu, X to exit:"
    send "x\r"
}

proc ::wunderground::cities {cities} {
     puts "\n\nlocations\n---------"
     dict for {k v} $cities {puts $k\t$v}
     puts "\n\nlocation\n---------"
     set city [dict get $cities 2]
     return $city
}
