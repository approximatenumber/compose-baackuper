FROM alpine

RUN apk update && \
    apk add bash

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]