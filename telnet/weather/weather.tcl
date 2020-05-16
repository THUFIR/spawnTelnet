\package provide weather  1.0
package require Expect

namespace eval ::wunderground {
}

#works
proc ::wunderground::noControlFlow {cities} {

     set nyc [dict get $cities 1]
     set lax [dict get $cities 2]
     set chi [dict get $cities 3]


    puts "\n\ngetting weather for $nyc\n\n"

    variable telnet [spawn telnet rainmaker.wunderground.com]



    expect "Press Return to continue:"
    send "\r"


    expect "or enter 3 letter forecast city code--"
    send "$nyc\r"



###########

    puts "\n\ngetting weather for $lax\n\n"


    expect "Press Return to continue, M to return to menu, X to exit:"
    send "m\r"

    expect "Selection:"
    send "1\r"

    expect "Enter 3-letter city code:"
    send "$lax\r"

##########

    puts "\n\ngetting weather for $chi\n\n"


    expect "Press Return to continue, M to return to menu, X to exit:"
    send "m\r"

    expect "Selection:"
    send "1\r"

    expect "Enter 3-letter city code:"
    send "$chi\r"


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
