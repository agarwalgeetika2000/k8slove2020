#!/bin/bash
if [ "$x" == "app1" ]
then
	cp -rf /mycode/app1/* /var/www/html/
	httpd -DFOREGROUND

elif [ "$x" == "app2" ]
then
	cp -rf /mycode/app2/* /var/www/html/
	httpd -DFOREGROUND
else
	echo "Sorry , no match found"   >/var/www/html/index.html
	httpd -DFOREGROUND
fi