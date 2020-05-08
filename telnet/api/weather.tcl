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

proc ::tutstack::helloWorld {arg1} {
	return "hello $arg1"
}


proc ::tutstack::connect {arg1} {
set env(DISPLAY) chilli:0
spawn telnet rainmaker.wunderground.com
set telnet $spawn_id
expect -nocase "Press Return to continue:"
send  "\r"
}
