#!/bin/bash

#pg_dropcluster --stop 9.5 main
#sudo systemctl daemon-reload
#exit

#pg_createcluster -d /app/postgres/data 9.5 fbit
#exit

#cd /app/postgres
#mkdir data
#cd /app/postgres/data
#ln -s /etc/postgresql/9.5/fbit/postgresql.conf
#pg_ctl start -D /app/postgres/data
#exit

cd /app/postgres/data  # cd $PGDATA
mkdir emiserv
cd emiserv
mkdir ems
