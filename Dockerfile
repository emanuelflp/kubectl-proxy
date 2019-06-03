FROM alpine:3.9

ARG KUBECTL_VERSION

RUN wget https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

EXPOSE 8001
ENTRYPOINT ["/usr/local/bin/kubectl", "proxy", "--address", "0.0.0.0"]
