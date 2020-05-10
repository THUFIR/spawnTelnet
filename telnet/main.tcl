lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0





puts "\n\nconnect to wunderground with:"
puts "-----------------"
puts "1)\tnoControlFlow"
puts "2)\tconnect\n\n"


set a [gets stdin]


if {$a == 1 } {
   wunderground::noControlFlow "nyc"
} else {
   wunderground::connect "nyc"
}


