FROM nginx:alpine

ENV PORT=8080
ENV NGINX_ENVSUBST_FILTER=^PORT$

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 8080
