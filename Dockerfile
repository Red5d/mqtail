FROM alpine
ADD . /var/www/localhost/htdocs/
CMD ["httpd", "-h", "/var/www/localhost/htdocs/", "-f"]

