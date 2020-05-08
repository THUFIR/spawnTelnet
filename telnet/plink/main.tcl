set f [open |[list plink -telnet 172.27.154.212] w+]
fconfigure $f -blocking 0 -buffering none
read $f
puts $f help\n
read $f
