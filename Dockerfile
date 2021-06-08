FROM nginx:1.17-alpine

LABEL maintainer="contact@datavisyn.io"

#copy static page
COPY ./conf.d/nginx-default.conf /etc/nginx/conf.d/default.conf
COPY ./html /usr/share/nginx/html

EXPOSE 8080

VOLUME /usr/share/nginx/html/apps.csv

