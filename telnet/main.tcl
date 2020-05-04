lappend auto_path /home/thufir/tcl/telnet/api
package require weather 1.0

set stack [tutstack::create]
foreach num {1 2 3 4 5} { tutstack::push $stack $num }

while { ![tutstack::empty $stack] } {
    puts "[tutstack::pop $stack]"
}

tutstack::destroy $stack
