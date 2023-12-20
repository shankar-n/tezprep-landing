#!/bin/bash
cd /home/ec2-user/tezprep-landing
npm run build
pm2 start npm --name "Tezprep" -- start
pm2 startup
pm2 save
pm2 restart all