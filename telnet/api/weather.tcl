package provide weather  1.0
package require Tcl      8.5

namespace eval ::tutstack {
    namespace export create destroy push pop peek empty
}



proc ::tutstack::hello {} {
	puts "hello world"
}
