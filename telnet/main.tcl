lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0
package require locations 1.0



set cities [cities::dictionary]
puts "locations\n---------"
dict for {k v} $cities {puts $k\t$v}



set menu [list {"1.) no control"} {"2.) connect"} {"3.) cities"}]

set prompt 9

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
   wunderground::cities $cities
   break
   }
   default {

puts "\n\n\n"

foreach option $menu {
   puts $option
}

puts -nonewline "choice: "
flush stdout
gets stdin prompt

   }
}
}




