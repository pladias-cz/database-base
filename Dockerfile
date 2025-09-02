FROM postgis/postgis:17-master@sha256:a2eea6969b5d724ba7ac136bc5da3b28a85204fc16a1ea4835515a2ae05bbfd8

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/database-base
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias.cz platform"

ENV LANG cs_CZ.utf8
RUN localedef -i cs_CZ -c -f UTF-8 -A /usr/share/locale/locale.alias $LANG
RUN localedef -i sk_SK -f UTF-8 -A /usr/share/locale/locale.alias sk_SK.utf8

ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres