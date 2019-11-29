#!/bin/bash

export INIT_CURDIR=`pwd`
cd $PGDATA
mkdir tablespaces
chown -R postgres:postgres tablespaces
chmod 777 tablespaces
cd $INIT_CURDIR