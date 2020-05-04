# Register the package
package provide weather  1.0
package require Tcl      8.5

# Create the namespace
namespace eval ::tutstack {
    # Export commands
    namespace export create destroy push pop peek empty
    # Set up state
    variable stack
    variable id 0
}



proc ::tutstack::hello {} {
	puts "hello world"
}
