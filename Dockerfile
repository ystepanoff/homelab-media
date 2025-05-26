FROM alpine:latest
RUN apk add --no-cache rtorrent
RUN mkdir -p /config /session /watch /files
VOLUME ["/config","/session","/watch","/files"]
WORKDIR /files
ENTRYPOINT ["rtorrent","-n","-o","import=/config/rtorrent.rc"]
