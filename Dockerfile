FROM nginx:alpine

LABEL maintainer="Mahjoub Mohamed Anis"
LABEL project="Horizon Voyages — DS2"
LABEL version="1.0"

RUN rm -rf /usr/share/nginx/html/*

COPY html/ /usr/share/nginx/html/
COPY css/  /usr/share/nginx/html/css/
COPY js/   /usr/share/nginx/html/js/

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# v1.0 — testé localement avec docker build et docker run
