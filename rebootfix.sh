#!/bin/bash
# PLESK Reboot Script
# Version 1.0
# by Jay Versluis - 13/08/2015
# License: GPL v2

# Upon server restart, NGINX regularly fails to start properly.
# This script helps alleviate this issue.

# stop NGINX
service nginx stop

# make Apache shutdown gracefully
apachectl graceful

# restart Apache
service httpd restart

# and finally restart NGINX
service nginx restart

# that's it
echo
echo 'All websites should be up and running again ;-)'
echo
