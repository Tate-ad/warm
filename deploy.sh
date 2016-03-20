#! /bin/bash

# start the nginx server with node

echo '.......start deploy.......'

echo '.. start node server use pm2 ..'

pm2 start pm2.json

if [ -e /etc/nginx/sites-available/warm ];then
    echo '!!!remove old warm config'
    rm -f /etc/nginx/sites-available/warm
    echo 'done'
fi
cp warm.confg /etc/nginx/sites-available/warm
ln -sf /etc/nginx/sites-available/warm /etc/nginx/sites-enabled/warm

service nginx restart

echo '.......end deploy.......'
