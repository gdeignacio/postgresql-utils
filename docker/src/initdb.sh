#!/bin/bash

chmod +x ./initdb.d/*.sh
source ./initdb.d/00-setenv.sh
touch asdepicas.txt
touch asde$APP_DATABASE_NAME.txt
./initdb.d/11-create-tablespace-folder.sh
./initdb.d/21-create-database.sh
./initdb.d/22-create-schema.sh