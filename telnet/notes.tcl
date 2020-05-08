#http://www.wellho.net/forum/The-Tcl-programming-language/telnet-login-using-expect.html
#!/usr/bin/expect
# Set the DISPLAY environment variable (as a test)
set env(DISPLAY) chilli:0
spawn telnet 172.25.126.248
# Not absolutely necessary, but good to keep the spawn_id for later
set telnet $spawn_id
# Case insensitive, just in case..
expect -nocase "login:"
send  "myuser\r"
# My telnetd insisted on an uppercase P. This works bothways
expect -nocase "password: "
send "123456\r"
# Match the prompt (contains a $)
expect -re {\$}
# Get the environment variables
send "env\r"
# Wait for the prompt
expect -re {\$}
exit 
