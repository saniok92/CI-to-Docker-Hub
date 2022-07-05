FROM nginx:1.21.1-alpine

WORKDIR /project

COPY /docker/nginx.conf /etc/nginx/nginx.conf

COPY /docker/index.html /var/www/index.html

COPY /docker/style.css /var/www/style.css

COPY /docker/error.html /var/www/error.html

COPY /docker/images /var/www/images

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
