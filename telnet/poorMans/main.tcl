

#https://wiki.tcl-lang.org/page/Poor+Man%27s+Expect

set scr [list "gin:" "venkat\r\n" "word:" "mypwd\r\n" ">" "date\r\n" ">" "exit\r\n"]
set r [vexpect [list telnet.server.com 23] $scr]

