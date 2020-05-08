package provide weather  1.0
package require Tcl      8.5
package require Expect


namespace eval ::tutstack {
}

proc ::tutstack::connect {arg1} {
	puts "got $arg1"
set env(DISPLAY) chilli:0
spawn telnet rainmaker.wunderground.com
set telnet $spawn_id
expect -nocase "Press Return to continue:"
send  "\r"
}

