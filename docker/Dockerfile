FROM postgres

ENV  PGTABLESPACES /app/postgresql/tablespaces

RUN mkdir -p "$PGTABLESPACES" && \
    chown -R postgres:postgres "$PGTABLESPACES" && \
    chmod -R 777 "$PGTABLESPACES"

VOLUME "$PGTABLESPACES"

#COPY initdb.sh /docker-entrypoint-initdb.d/

#EXPOSE 5432
#CMD [ "postgres" ]
