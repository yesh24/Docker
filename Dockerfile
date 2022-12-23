FROM nginx:latest as docker_builder
WORKDIR /
ADD . /
COPY --from =docker_builder static-html-directory /usr/share/nginx/html


