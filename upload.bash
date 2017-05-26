#!/bin/bash

SCRIPT="rm -rf /tmp/awesome.tar.gz && mv ~/awesome.tar.gz /tmp && cd /tmp && tar xvf awesome.tar.gz && cd /var/www/file_hosting_dev/public/ && rm -rf /var/www/file_hosting_dev/public/js && rm -rf /var/www/file_hosting_dev/public/css && mv /tmp/public/js ./js && mv /tmp/public/css ./css && exit"

cd /var/www/html/$1/

echo "Archiving public folder"
tar -cf awesome.tar.gz ./$2

echo "public.tar.gz has been created"
mv awesome.tar.gz /tmp

echo "Moving to tmp folder"
cd /tmp

echo "Sending to remote server"
scp /tmp/awesome.tar.gz developer_kovalenko@107.170.18.92:~/

echo "Remove /tmp copy of file"
rm ./awesome.tar.gz
ssh developer_kovalenko@107.170.18.92 ${SCRIPT}


exit
