FROM alpine

RUN apk add --no-cache lighttpd

RUN mkdir /run/lighttpd; chown lighttpd /run/lighttpd

ADD www-root/ /var/www/localhost/htdocs/
ADD lighttpd.conf /etc/lighttpd.conf

EXPOSE 8080

USER 100

ENTRYPOINT [ "/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf" ]