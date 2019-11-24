#!/bin/bash

source ./initdb.d/00-setenv.sh
./initdb.d/11-create-tablespace-folder.sh
./initdb.d/21-create-database.sh
./initdb.d/22-create-schema.sh