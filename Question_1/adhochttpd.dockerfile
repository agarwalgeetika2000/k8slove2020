from centos 
maintainer geetikaagarwal2000@gmail.com
run yum install httpd -y
run mkdir /mycode
env x=app1 
# this variable will be available in docker img that will be created 
copy app1 /mycode/app1
copy app2 /mycode/app2
copy start.sh /mycode/start.sh
run chmod +x /mycode/start.sh
expose 80
entrypoint ["/bin/bash","/mycode/start.sh"]

