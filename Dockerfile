FROM nginx:1.17-alpine

LABEL maintainer="contact@datavisyn.io"

#copy static page
COPY ./conf.d/nginx.conf /etc/nginx/nginx.conf
COPY ./conf.d/nginx-default.conf /etc/nginx/conf.d/default.conf
COPY ./html /usr/share/nginx/html

RUN touch /var/run/nginx.pid && \
  adduser -D -H -u 1000 -s /bin/bash www-data -G www-data && \
  chown -R www-data:www-data /var/run/nginx.pid && \
  chown -R www-data:www-data /var/cache/nginx && \
  chown -R www-data:www-data /var/log/nginx && \
  chmod -R a+rw /etc/nginx/ && chmod -R a+rw /tmp/ && \
  chmod -R a+rw /usr/share/nginx/html/

USER www-data

EXPOSE 8080

CMD nginx -g 'daemon off;'
