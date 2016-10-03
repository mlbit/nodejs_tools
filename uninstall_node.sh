#!/bin/ksh
lsbom -f -l -s -pf /var/db/receipts/org.nodejs.node.pkg.bom | while read filename
do
   echo "DeleFile  $filename"
   rm /usr/local/$filename
done 
rm -rf /usr/local/lib/node \
     /usr/local/lib/node_modules \
     /var/db/receipts/org.nodejs.*
