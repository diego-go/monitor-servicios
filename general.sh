#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>General information"
echo "</title></head><body>"

echo  "<meta name="viewport" content="width=device-width, initial-scale=1">"
echo  "<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">"
echo  "<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>"
echo  "<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>"

echo "<h1 align="center"><p class="bg-danger">Information for host $(hostname -s)</p></h1>"
echo ""

echo "<h2>Memory Info</h2>"
echo "<pre> $(free -m) </pre>"

echo "<h2>Disk Info:</h2>"
echo "<pre> $(df -h) </pre>"

echo "<h2>Server Uptime</h2>"
echo "<pre> $(uptime) </pre>"

echo "<h2>Apache Requests</h2>"
echo "<pre> $(systemctl status httpd | grep Status) </pre>"

echo "<h2>Logged Users</h2>"
echo "<pre> $(w) </pre>"

echo "<h2>System Version</h2>"
echo "<pre> $(cat /etc/redhat-release) </pre>"

echo "<br>"
#echo "<center><B><u>Information generated $(date)</u></B></center>"
echo "<center><B><p class="bg-primary">Information generated $(date)</p></B></center>"
echo "</body></html>"

echo "<center><input type='button' value='Go Back!' onclick='history.back()'></input></center>"
