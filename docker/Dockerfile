FROM postgres

ENV  PGTABLESPACES /var/lib/postgresql/tablespaces

USER postgres

# this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
RUN mkdir "$PGTABLESPACES" 

USER root

RUN chown -R postgres:postgres "$PGTABLESPACES" && chmod 777 "$PGTABLESPACES"

VOLUME /var/lib/postgresql/tablespaces

#COPY initdb.sh /docker-entrypoint-initdb.d/

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]