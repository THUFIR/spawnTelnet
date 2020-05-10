lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0


set a [gets stdin]

if {$a == 1 } {
   wunderground::noControlFlow "nyc"
} else {
   wunderground::connect "nyc"

}


