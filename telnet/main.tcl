lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0





array set cities {
	nyc
	lon
}



foreach {c count} [array get cities ] {
	puts "$c"
}


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


