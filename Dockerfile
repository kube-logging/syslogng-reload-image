FROM ghcr.io/banzaicloud/custom-runner:v0.2.0 AS custom-runner

FROM alpine:3.17.1

RUN apk add socat

COPY --from=custom-runner /runner /

WORKDIR /

ENTRYPOINT ["/runner"]
