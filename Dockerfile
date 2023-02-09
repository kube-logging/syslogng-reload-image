FROM ghcr.io/banzaicloud/custom-runner:0.1.0 AS custom-runner

FROM alpine:latest

RUN apk add socat

COPY --from=custom-runner /runner /

WORKDIR /

ENTRYPOINT ["/runner"]
