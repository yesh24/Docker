FROM nginx:latest as docker_builder
RUN groupadd -r myuser && adduser -r -g myuser myuser
USER myuser
USER root
COPY --from =docker_builder static-html-directory /usr/share/nginx/html
#RUN chown myuser:myuser /usr/local/bin/run-my-app.sh && \
    chmod 744 /usr/local/bin/run-my-app.sh

