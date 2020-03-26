#!/bin/bash

WORKDIR=$(pwd)

echo $WORKDIR


echo "############## Building Gateway ##############"
cd $WORKDIR/donateverse-gateway
mvn clean package

echo "############## Building Discovery ##############"
cd $WORKDIR/donateverse-discovery-server
mvn clean package

echo "############## Building User ##############"
cd $WORKDIR/donateverse-user
mvn clean package

echo "############## Building Gateway ##############"
cd $WORKDIR/donateverse-transaction
mvn clean package