package provide chained  1.0

namespace eval ::example {
}

proc ::example::first {foo} {
puts "hello $foo from first"
second $foo
}

proc ::example::second {bar} {
puts "hello $bar from second"
}
