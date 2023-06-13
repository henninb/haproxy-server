FROM haproxytech/haproxy-alpine
COPY ./proxy.crt /etc/ssl/certs/
COPY ./proxy.key /etc/ssl/certs/proxy.crt.key
COPY ./haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
RUN mkdir -p /usr/local/share/ca-certificates
COPY ./rootCA.pem /usr/local/share/ca-certificates/rootCA.pem
RUN apk update
RUN apk add -q --no-cache ca-certificates
RUN update-ca-certificates
