FROM ubuntu 
MAINTAINER ad
RUN apt update
RUN apt install -y nginx git
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetefen/static-web-example.git /var/www/html
EXPOSE 80
ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
