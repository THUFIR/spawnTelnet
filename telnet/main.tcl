lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0
package require locations 1.0



set cities [cities::dictionary]

set menu [list {1.) no control} {2.) connect} {3.) locations}]


set prompt 9
while {$prompt > 3} {
puts "\n\n\n"

foreach option $menu {
   puts $option
}

puts -nonewline "\n\nchoice: "
flush stdout
gets stdin prompt

   }









switch $prompt {
   1 {
   wunderground::noControlFlow $cities
   }
   2 {
   wunderground::connect $cities
   }
   3 {
   wunderground::cities $cities
   }
   default {
   puts "whoops"
   }
}





