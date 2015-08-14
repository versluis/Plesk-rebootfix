# Plesk rebootfix
Linux script that fixes trouble after Plesk server restarts, when both NGINX and Apache are working together. 

Since Plesk 11.5, NGINX can act as a proxy server so that the bulk of all web files can be served by NGINX and not by Apache. This makes sites faster and keeps the number of concurrent connetions to the web server smaller, while lowering memory usage at the same time.

The problem is, on a great number of servers NGINX cannot make a connection to Apache after a full server restart. As a result, all websites are down until this is fixed in four easy steps. This script alleviates such issues by doing the following:
- stop NGINX
- ask Apache to stop gracefully
- restart Apache
- restart NGINX

I used to issue all four commands manually, but it's much faster to run one small script. Sadly Plesk does not do this by default.

# Usage
The only file necessary is rebootfix.sh. Copy it to a safe location and add execute permissions like so:

    chmod +x ./rebootfix.sh

Run the script with root privileges after your server restarts.

# Known Issues
The script currently works with CentOS 6 and CentOS 7 servers only.
