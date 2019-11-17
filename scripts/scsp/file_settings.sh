#!/bin/bash

#pg_dropcluster --stop 9.5 main
#sudo systemctl daemon-reload
#exit

#pg_createcluster -d /app/postgres/data 9.5 my_cluster
#exit

#cd /app/postgres
#mkdir data
#cd /app/postgres/data
#ln -s /etc/postgresql/9.5/my_cluster/postgresql.conf
#pg_ctl start -D /app/postgres/data
#exit

#cd /app/postgres/data  # cd $PGDATA
#mkdir my_app
#cd my_app
#mkdir mpp


cd /app/postgres/databases
mkdir scsp_emisor
cd scsp_emisor
mkdir emisor

cd /app/postgres/databases
mkdir scsp_admin
cd scsp_admin
mkdir admin

cd /app/postgres/databases
mkdir scsp_requirente
cd scsp_requirente
mkdir requirente

cd /app/postgres/databases
mkdir scsp_cliente
cd scsp_cliente
mkdir cliente
