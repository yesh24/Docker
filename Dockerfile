FROM nginx:latest as docker_builder
COPY  static-html-directory /usr/share/nginx/html/index.html


