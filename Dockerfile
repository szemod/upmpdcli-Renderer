FROM alpine:latest

# Telepítsük az alap csomagokat és a szükséges fordítóeszközöket
RUN apk update && \
    apk add --no-cache \
    upmpdcli \
    mpd \
    build-base \
    git \
    libtool \
    automake \
    autoconf \
    bash && \
    rm -rf /var/cache/apk/*

# Konfiguráljuk az upmpdcli-t
COPY upmpdcli.conf /etc/upmpdcli.conf

# Indítsuk el az upmpdcli-t
CMD ["upmpdcli", "-h", "192.168.1.73", "-p", "6600", "-f", "Home_Assistant_UPnP"]

