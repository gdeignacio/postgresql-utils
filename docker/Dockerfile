FROM postgres

ENV  PGTABLESPACES /app/postgresql/tablespaces

RUN mkdir -p /app/postgresql/tablespaces && \
    chown -R postgres:postgres /app/postgresql/tablespaces && \
    chmod -R 777 /app/postgresql/tablespaces

VOLUME /app/postgresql/tablespaces

#COPY initdb.sh /docker-entrypoint-initdb.d/

#EXPOSE 5432
#CMD [ "postgres" ]
