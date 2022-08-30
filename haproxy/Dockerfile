FROM haproxy:latest

#RUN sudo chmod 777 /usr/local/etc/haproxy/haproxy.cfg

COPY haproxy/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 8084
EXPOSE 80

RUN cat /usr/local/etc/haproxy/haproxy.cfg
