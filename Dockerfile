FROM golang:1.11.2

RUN go get github.com/mpolden/echoip/...

COPY ./geoip/GeoLite2-City.mmdb /go/bin
COPY ./geoip/GeoLite2-Country.mmdb /go/bin
COPY start.sh /go/bin

EXPOSE 8080

CMD ["/go/bin/start.sh"]
