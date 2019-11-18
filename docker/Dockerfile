FROM postgres

ENV  PG_VOLUME_PATH /app/postgresql

RUN mkdir -p /app/postgresql/tablespaces && \
    chown -R postgres:postgres /app/postgresql && \
    chmod -R 777 /app/postgresql

VOLUME /app/postgresql

#COPY initdb.sh /docker-entrypoint-initdb.d/

#EXPOSE 5432
#CMD [ "postgres" ]
