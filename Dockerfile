FROM ghcr.io/kube-logging/custom-runner:v0.5.0 as custom-runner

FROM alpine:3.17

RUN apk add socat

COPY --from=custom-runner /runner /

WORKDIR /

ENTRYPOINT ["/runner"]
