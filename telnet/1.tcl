lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0
package require locations 1.0


#a [cities::list]

set b [cities::list [array get a]]

puts "\n\n\nconnect to wunderground with:"
puts "-----------------------------"
puts "1)\tnoControlFlow"
puts "2)\tconnect\n\n"


puts -nonewline "connection method: "
flush stdout
gets stdin prompt
puts "connecting with $prompt"


if {$prompt == 1 } {
   wunderground::noControlFlow "nyc"
} else {
   wunderground::connect "nyc"
}



