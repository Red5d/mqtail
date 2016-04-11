FROM alpine
RUN apk add --update lighttpd
ADD . /var/www/localhost/htdocs/
CMD ["httpd", "-h", "/var/www/localhost/htdocs/", "-f"]

