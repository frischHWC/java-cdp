#!/usr/bin/env bash

export DIR="/home/root/java-app-cdp"

echo "*** Starting to launch program ***"

    cd $DIR

echo "Launching jar via java command"

    java -jar java-app-cdp.jar $@

    sleep 1

echo "*** Finished program ***"