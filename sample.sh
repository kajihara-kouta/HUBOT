#!/bin/bash
#/opt/node_modules/coffee-script/bin/coffee /opt/myhubot/scripts/old/mail.coffee
cd /var/www/upload
LATEST_FILE="`pwd`/`ls -lt *.jpg | head -n 1 | gawk '{print $9}'`"
\cp -fp $LATEST_FILE Reception_data.jpg
/root/.nodebrew/node/v6.3.1/bin/node /opt/myhubot/shell/mail.js

