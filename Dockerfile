FROM alpine

RUN apk add --no-cache lighttpd

ADD www-root/ /var/www/localhost/htdocs/

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf" ]