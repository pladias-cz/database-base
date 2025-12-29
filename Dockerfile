FROM postgis/postgis:17-master@sha256:81b8db7e85886af4cffc7d7647dbeefdc02807db74ff8d6bcb1dc2b0ee9b55dd

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/database-base
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias.cz platform"

ENV LANG cs_CZ.utf8
RUN localedef -i cs_CZ -c -f UTF-8 -A /usr/share/locale/locale.alias $LANG
RUN localedef -i sk_SK -f UTF-8 -A /usr/share/locale/locale.alias sk_SK.utf8

ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres