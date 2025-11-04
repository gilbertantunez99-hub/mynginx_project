FROM fedora
RUN dnf -y install nginx hostname
RUN echp "Hello, from container $(hostname)" > /usr/share/nginx/html/index.html
RUN sed -i '/::*80/s/^/#/'/ect/nginx/nginx.conf
EXPOSE 80
CMD nginx -g 'daemon off;'