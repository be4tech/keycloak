FROM be4tech/keycloak-newo:latest

COPY docker-entrypoint.sh /opt/keycloak/utils

ENTRYPOINT [ "/opt/keycloak/utils/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

