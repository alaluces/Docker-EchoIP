# Docker-EchoIP
Docker based echo IP service from https://github.com/mpolden/echoip

### INSTALLATION
Install docker-ce

Clone the project
```sh
git clone https://github.com/alaluces/Docker-EchoIP.git echoip
cd echoip
```
Download the geoip db and extract to geoip folder
```sh
cd geoip
wget https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz
wget https://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.tar.gz
tar xvf GeoLite2-City.tar.gz
tar xvf GeoLite2-Country.tar.gz
mv GeoLite2-City_20181204/GeoLite2-City.mmdb ..
mv GeoLite2-City_20181204/GeoLite2-Country.mmdb ..
cd ..
```

Edit the startup script to modify your preferences

```sh
vim start.sh

Application Options:
  -f, --country-db=FILE        Path to GeoIP country database
  -c, --city-db=FILE           Path to GeoIP city database
  -l, --listen=ADDR            Listening address (default: :8080)
  -r, --reverse-lookup         Perform reverse hostname lookups
  -p, --port-lookup            Enable port lookup
  -t, --template=FILE          Path to template (default: index.html)
  -H, --trusted-header=NAME    Header to trust for remote IP, if present (e.g. X-Real-IP)

Help Options:
  -h, --help                   Show this help message
```

Build the container
```sh
docker build -t echoip .
```

Run the image you built
```sh
docker run -d --rm --name echoip -p8080:8080 echoip
```

If built successfully, it can be viewed on:
```sh
http://localhost:8080/json
or
https://localhost:8080/json
```
