FROM postgres

ENV  PGTABLESPACES /var/lib/postgresql/tablespaces

# this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
RUN mkdir -p "$PGTABLESPACES" && chown -R postgres:postgres "$PGTABLESPACES" && chmod 777 "$PGTABLESPACES"
VOLUME /var/lib/postgresql/tablespaces

#COPY initdb.sh /docker-entrypoint-initdb.d/

#EXPOSE 5432
#CMD [ "postgres" ]
