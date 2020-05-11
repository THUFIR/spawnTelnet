lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0



array set cities {
	nyc 1
	lon 2
}


puts "\n\ncities"
puts "------"
foreach {c count} [array get cities ] {
   puts "$c" 
}


puts "\n\n\nconnect to wunderground with:"
puts "-----------------------------"
puts "1)\tnoControlFlow"
puts "2)\tconnect\n\n"


set $prompt 1
puts -nonewline "connection method:" $prompt; flush stdout

#set a [gets stdin]

if {$prompt == 1 } {
   wunderground::noControlFlow "nyc"
} else {
   wunderground::connect "nyc"
}


