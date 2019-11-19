FROM postgres

#ENV  PGTABLESPACES $PGDATA/tablespaces

# this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
#RUN mkdir "$PGTABLESPACES" && chown -R postgres:postgres "$PGTABLESPACES" && chmod 777 "$PGTABLESPACES"

#VOLUME /var/lib/postgresql/tablespaces

#COPY initdb.sh /docker-entrypoint-initdb.d/

COPY file-settings-entrypoint.sh /usr/local/bin

RUN ln -s usr/local/bin/file-settings-entrypoint.sh / # backwards compat
CMD ["file-settings-entrypoint.sh"]