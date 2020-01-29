#!/usr/bin/with-contenv bash

source $CONTAINER_VARS_FILE

#
#	Install npm packages
#

if [ -d "/app/node_modules" ]; then
	exit 0 # Modules already installed
fi

cd /app
$RUNCMD npm install

