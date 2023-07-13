FROM quay.io/keycloak/keycloak:19.0.1

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_DB=postgres
COPY themes/. /opt/keycloak/themes

# WORKDIR /opt/keycloak
# RUN keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
CMD ["-b", "0.0.0.0"]

