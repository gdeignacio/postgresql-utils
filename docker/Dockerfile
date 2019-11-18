FROM postgres:12-alpine

ENV  PG_VOLUME_PATH /app/postgresql

RUN mkdir -p /app/postgresql && \
    chown -R postgres:postgres /app/postgresql && \
    chmod 777 /app/postgresql

VOLUME /app/postgresql

#COPY initdb.sh /docker-entrypoint-initdb.d/

#EXPOSE 5432
#CMD [ "postgres" ]
