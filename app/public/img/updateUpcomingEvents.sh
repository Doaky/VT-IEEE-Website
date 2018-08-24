#!/bin/bash
# Download spreadsheet
# cd /xampp/htdocs/VT-IEEE-Website/app/public/img && { curl -L "https://docs.google.com/spreadsheets/d/e/2PACX-1vRT4j8_uq8krB9XVHxPI0mxDYVfkXJw5nGbOn91VEW3ujsp8asZy-cb1utp8FuAT4XvlpJEl3G-MQsT/pub?gid=97741753&single=true&output=csv" > "./Upcoming Events.csv" ; }
curl -L "https://docs.google.com/spreadsheets/d/e/2PACX-1vRT4j8_uq8krB9XVHxPI0mxDYVfkXJw5nGbOn91VEW3ujsp8asZy-cb1utp8FuAT4XvlpJEl3G-MQsT/pub?gid=97741753&single=true&output=csv" -o "./Upcoming Events.csv"

# Put on server with CyberDuck
duck --upload davs://djo96@webdav.hosting.vt.edu/www.ieee.vt.edu/app/public/img/ "Upcoming Events.csv" --existing overwrite


sleep 30