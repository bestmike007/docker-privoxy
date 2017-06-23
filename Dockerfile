FROM alpine:3.6
MAINTAINER Yuanhai He <i@bestmike007.com>
RUN apk add --no-cache privoxy wget curl
COPY config /etc/privoxy/config
ENTRYPOINT ["privoxy"]
CMD ["--no-daemon", "/etc/privoxy/config"]
