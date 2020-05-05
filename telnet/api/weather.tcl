package provide weather  1.0
package require Tcl      8.5

namespace eval ::tutstack {
}

proc ::tutstack::hello {} {
	puts "hello world"
}


proc ::tutstack::sum {arg1 arg2} {
    set x [expr {$arg1 + $arg2}];
    return $x
}
