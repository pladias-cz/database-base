FROM postgis/postgis:17-master@sha256:d47fe8c1bf27fa2a498899e7a2bc572af002a7f882b91c07795f0509f96ef027

LABEL org.opencontainers.image.source=https://github.com/pladias-cz/database-base
LABEL org.opencontainers.image.description="Postgres/PostGIS base image for Pladias.cz platform"

ENV LANG cs_CZ.utf8
RUN localedef -i cs_CZ -c -f UTF-8 -A /usr/share/locale/locale.alias $LANG
RUN localedef -i sk_SK -f UTF-8 -A /usr/share/locale/locale.alias sk_SK.utf8

ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres