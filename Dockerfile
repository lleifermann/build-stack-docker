FROM gradle:jdk8-alpine

USER root
RUN set -o errexit -o nounset \
   && echo "Installing build dependencies" \
   && apk add --update bash wget unzip git && rm -rf /var/cache/apk/*

USER root