FROM nginx:1.17-alpine

LABEL maintainer="contact@datavisyn.io"

ENV LANDING_PAGE_TITLE='Datavisyn Applications'

#copy static page
COPY ./conf.d/nginx-default.conf /etc/nginx/conf.d/default.conf
COPY ./html /usr/share/nginx/html

EXPOSE 8080

VOLUME /usr/share/nginx/html/apps.csv

CMD sed -i -e "s/LANDING_PAGE_TITLE/${LANDING_PAGE_TITLE}/g" /usr/share/nginx/html/index.html && nginx -g 'daemon off;'
