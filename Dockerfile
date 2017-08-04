FROM nginx:alpine
MAINTAINER Jefferson Souza<hsinfo@gmail.com>

COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY index.html /var/www/html/

RUN mkdir -p /tmp/nginx/body

EXPOSE 80 443
WORKDIR /var/www/html

CMD ["nginx"]