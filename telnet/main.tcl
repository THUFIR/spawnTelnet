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
puts "2)\tconnect"
puts "3)\tcities\n\n"
puts -nonewline "connection method: "
flush stdout
gets stdin prompt
}



set prompt 99
while {$prompt > 4} {
switch $prompt {
   1 {
   wunderground::noControlFlow $cities
   break
   }
   2 {
   wunderground::connect $cities
   break
   }
   3 {
   wunderground::connect $cities
   break
   }
   default {
     in
   }
}
}


