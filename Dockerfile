FROM mhart/alpine-node:5.9.0

RUN apk add --update \
    ca-certificates gcc musl-dev git \
    && rm -rf /var/cache/apk/*

WORKDIR /work

CMD ["npm", "install"]

