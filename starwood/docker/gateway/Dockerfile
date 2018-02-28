FROM nginx:alpine

WORKDIR /etc/nginx/conf.d
COPY ./default.conf ./default.conf

COPY www/ /var/www/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]