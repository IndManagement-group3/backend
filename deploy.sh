#!/usr/bin/env bash
BASEDIR=$PWD

cd broker
./deploy.sh
cd $BASEDIR

cd webserver
./deploy.sh
cd $BASEDIR