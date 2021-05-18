FROM klakegg/hugo:0.83.1-ext-alpine-onbuild AS hugo

FROM nginx:1.20-alpine
COPY --from=hugo /target /usr/share/nginx/html

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf