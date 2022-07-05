FROM nginx:1.21.1-alpine

WORKDIR /project

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /var/www/index.html

COPY style.css /var/www/style.css

COPY error.html /var/www/error.html

COPY images /var/www/images

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
