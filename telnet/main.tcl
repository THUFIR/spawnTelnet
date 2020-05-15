lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0
package require locations 1.0



set cities [cities::dictionary]
puts "locations\n---------"
#dict for {k v} $cities {puts $k\t$v}



proc in {} {
puts "\n\n\nconnect to wunderground with:"
puts "-----------------------------"
puts "1)\tnoControlFlow"
puts "2)\tconnect\n\n"


puts -nonewline "connection method: "
flush stdout
gets stdin prompt
}



set prompt 99



switch $prompt {
   1 {
   wunderground::noControlFlow $cities
   }
   2 {
   wunderground::connect $cities
   }
   3 {
   }
   default {
     puts "infinte loop here"
   }
}



