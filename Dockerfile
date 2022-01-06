FROM alpine:3.10

RUN apk add --no-cache ca-certificates bash curl jq openssh sshpass

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash"]