#!/bin/bash

# WARNING
# All your data will be LOST
# Run this script only for development
# or first go into production

echo ""
echo respawn.sh started
echo ""

source ./setenv.sh

echo LONG_APP_NAME $LONG_APP_NAME
echo SHORT_APP_NAME $SHORT_APP_NAME
echo BD_PORT $DB_PORT
echo PG_PASSWORD $PG_PASSWORD
echo DATA_PATH $DATA_PATH
echo TABLESPACE_PATH $TABLESPACE_PATH
echo PGTABLESPACES $PGTABLESPACES
echo GIT_URL $GIT_URL

# Don't optimize with $DATA_PATH
# Could be empty and all data will be lost
sudo rm -r /app/docker/postgresql/$LONG_APP_NAME
mkdir -p $HOME/.docker-utils
cd $HOME/.docker-utils
echo Current dir should be $HOME/.docker-utils
echo Current dir is `pwd`
echo `pwd` contains
ls -l
echo Removing postgresql-utils from `pwd`
sudo rm -r $HOME/.docker-utils/postgresql-utils
ls -l
git clone $GIT_URL
echo Cloning from git
cd $HOME/.docker-utils/postgresql-utils/docker/src

echo Building images at `pwd`
sudo docker build -t "postgres:$LONG_APP_NAME" .

echo Scripts folder `pwd`
sudo chmod +x *

echo Creating $DATA_PATH folder
sudo mkdir -p $DATA_PATH
ls -l $DATA_PATH/..
sudo docker stop pg-docker-$LONG_APP_NAME
../scripts/run-container.sh
