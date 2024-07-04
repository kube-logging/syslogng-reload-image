FROM ghcr.io/kube-logging/custom-runner:v0.8.0 as custom-runner

FROM alpine:3.20

RUN apk add socat

COPY --from=custom-runner /runner /

WORKDIR /

ENTRYPOINT ["/runner"]
