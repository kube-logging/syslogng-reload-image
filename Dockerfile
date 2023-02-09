FROM ghcr.io/banzaicloud/custom-runner:0.1.0 AS custom-runner

FROM alpine:3.17.1

RUN apk add socat

COPY --from=custom-runner /runner /

WORKDIR /

ENTRYPOINT ["/runner"]
