FROM nginx:latest as docker_builder
USER root
COPY --from=docker_builder static-html-directory /usr/share/nginx/html


