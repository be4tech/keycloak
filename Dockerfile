FROM https://hub.docker.com/r/be4tech/keycloak-newo

COPY docker-entrypoint.sh /opt/keycloak/utils

ENTRYPOINT [ "/opt/keycloak/utils/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

