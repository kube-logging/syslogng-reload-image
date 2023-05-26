FROM ghcr.io/kube-logging/custom-runner:v0.7.1 as custom-runner

FROM alpine:3.18

RUN apk add socat

COPY --from=custom-runner /runner /

WORKDIR /

ENTRYPOINT ["/runner"]
