FROM postgres

ENV PGTABLESPACES /var/lib/postgresql/tablespaces
RUN mkdir -p /var/lib/postgresql/tablespaces && chown -R postgres:root /var/lib/postgresql/tablespaces && chmod 777 /var/lib/postgresql/tablespaces
VOLUME /var/lib/postgresql/tablespaces

#COPY initdb.sh /docker-entrypoint-initdb.d/

#EXPOSE 5432
#CMD [ "postgres" ]
