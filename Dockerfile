FROM nginx:1.20-alpine

COPY ./src/ /usr/share/nginx/html/

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf