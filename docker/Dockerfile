FROM postgres

ENV  PGTABLESPACES /var/lib/postgresql/tablespaces

USER postgres

# this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
RUN mkdir "$PGTABLESPACES" 
#&& chown -R postgres:postgres "$PGTABLESPACES" && chmod 777 "$PGTABLESPACES"

USER root

VOLUME /var/lib/postgresql/tablespaces

#COPY initdb.sh /docker-entrypoint-initdb.d/

#EXPOSE 5432
#CMD [ "postgres" ]
