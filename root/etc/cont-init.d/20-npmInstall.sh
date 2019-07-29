#!/usr/bin/with-contenv bash

#
#	Install npm packages
#

if [ -d "/app/node_modules" ]; then
	exit 0 # Modules already installed
fi

cd /app
npm install
chown -R $CONTAINER_USER:$CONTAINER_USER /app/node_modules