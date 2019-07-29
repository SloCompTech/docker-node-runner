#
#	Base image
#	@see https://github.com/SloCompTech/docker-baseimage
#
FROM slocomptech/baseimage:node

#
#	Environment variables
#
ENV NPM_RUN_CMD="npm run start"

#
#	Add local files to image
#
COPY root/ /
