#!/bin/sh
/go/bin/echoip -c /go/bin/GeoLite2-City.mmdb -f /go/bin/GeoLite2-Country.mmdb -H X-Real-IP
