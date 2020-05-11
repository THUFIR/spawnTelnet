lappend auto_path /home/thufir/NetBeansProjects/spawnTelnet/telnet/weather

package require weather 1.0
package require locations 1.0



set b [cities::listCities]



foreach i {$b} { 
    puts $i;
}

