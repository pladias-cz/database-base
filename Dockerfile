FROM postgis/postgis:17-master@sha256:f6cdc5927c3639124f85d7b41554bdbd19d63ff4ff513236ddba19b4b15d6c39

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/database-base
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias.cz platform"

ENV LANG cs_CZ.utf8
RUN localedef -i cs_CZ -c -f UTF-8 -A /usr/share/locale/locale.alias $LANG
RUN localedef -i sk_SK -f UTF-8 -A /usr/share/locale/locale.alias sk_SK.utf8

ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres