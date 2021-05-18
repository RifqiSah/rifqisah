FROM klakegg/hugo:0.83.1-onbuild AS hugo

FROM nginx:1.20-alpine
COPY --from=hugo /target /usr/share/nginx/html