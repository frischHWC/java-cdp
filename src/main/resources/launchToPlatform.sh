#!/usr/bin/env bash

# Export your host here to launch the program on the platform
# export HOST=

export USER=root
export DEST_DIR="/root/java-app-cdp"

echo "Create needed directory on platform and send required files there"

ssh ${USER}@${HOST} "mkdir -p ${DEST_DIR}/"
ssh ${USER}@${HOST} "mkdir -p ${DEST_DIR}/resources/"

scp src/main/resources/*.properties ${USER}@${HOST}:${DEST_DIR}/
scp src/main/resources/launch.sh ${USER}@${HOST}:${DEST_DIR}/

ssh ${USER}@${HOST} "chmod +x ${DEST_DIR}/launch.sh"

scp target/java-app-cdp-*.jar ${USER}@${HOST}:${DEST_DIR}/java-app-cdp.jar

echo "Finished to send required files"

echo "Launch script on platform to launch program properly"
ssh ${USER}@${HOST} 'bash -s' < src/main/resources/launch.sh $@
echo "Program finished"


