#
#	Base image
#	@see https://github.com/SloCompTech/docker-baseimage
#
FROM slocomptech/baseimage:node

#
#	Arguments
#
ARG BUILD_DATE
ARG VCS_REF
ARG VCS_SRC
ARG VERSION

#
#	Labels
#	@see https://github.com/opencontainers/image-spec/blob/master/annotations.md
#	@see https://semver.org/
#
LABEL maintainer="martin.dagarin@gmail.com" \
			org.opencontainers.image.authors="Martin Dagarin" \
			org.opencontainers.image.created=${BUILD_DATE} \
			org.opencontainers.image.description="Node runner image" \
			org.opencontainers.image.documentation="https://github.com/SloCompTech/docker-node-runner" \
			org.opencontainers.image.revision=${VCS_REF} \
			org.opencontainers.image.source=${VCS_SRC} \
			org.opencontainers.image.title="Node runner image" \
			org.opencontainers.image.url="https://github.com/SloCompTech/docker-node-runner" \
			org.opencontainers.image.version=${VERSION}

#
#	Environment variables
#
ENV NPM_RUN_CMD="npm run start"

#
#	Add local files to image
#
COPY root/ /
