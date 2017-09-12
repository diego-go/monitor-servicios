#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>General information"
echo "</title></head><body>"

echo "<h1 align="center">General system information for host $(hostname -s)</h1>"
echo ""

echo "<h2>Memory Info</h2>"
echo "<pre> $(free -m) </pre>"

echo "<h2>Disk Info:</h2>"
echo "<pre> $(df -h) </pre>"

echo "<h2>Server Uptime</h2>"
echo "<pre> $(uptime) </pre>"

echo "<h2>Logged Users</h2>"
echo "<pre> $(w) </pre>"

echo "<h2>System Version</h2>"
echo "<pre> $(cat /etc/redhat-release) </pre>"

echo "<center>Information generated $(date)</center>"
echo "</body></html>"

echo "<input type='button' value='Go Back!' onclick='history.back()'></input>"
