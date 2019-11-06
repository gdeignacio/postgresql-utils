FROM postgres

ENV PGTABLESPACES=/var/lib/postgresql/tablespaces
RUN mkdir -p "$PGTABLESPACES" && chown -R postgres:postgres "$PGTABLESPACES" && chmod 777 "$PGTABLESPACES"
VOLUME /var/lib/postgresql/tablespaces

COPY initdb.sh /docker-entrypoint-initdb.d/

EXPOSE 5432
CMD [ "postgres" ]
