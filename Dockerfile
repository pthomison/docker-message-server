FROM fedora:31

RUN mkdir -p /tmp/http_root

CMD echo $WEB_MESSAGE > /tmp/http_root/index.html; \
/usr/bin/python3.7 -m http.server 8080 --directory /tmp/http_root
