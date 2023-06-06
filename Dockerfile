FROM haproxytech/haproxy-alpine
COPY ./proxy.crt /etc/ssl/certs/
COPY ./proxy.key /etc/ssl/certs/proxy.crt.key
COPY ./haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
