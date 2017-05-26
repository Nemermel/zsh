#!/usr/bin/bash

cd /srv/http/$BASH_ARGV/
echo "Archiving public folder"
tar -cf public.tar.gz ./public
echo "public.tar.gz has been created"
mv public.tar.gz /tmp
echo "Moving to tmp folder"
cd /tmp
echo "Sending to remote server"
#scp /tmp/public.tar.gz developer_kovalenko@107.
echo "Remove /tmp copy of file"
rm ./public.tar.gz
#ssh developer_kovalenko@107.
ls
exit
