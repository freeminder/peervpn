FROM ubuntu:14.04
MAINTAINER Dmitry Zhukov <dmitry.zhukov@gmail.com>

ADD peervpn.conf /etc/peervpn.conf
ADD peervpn /usr/local/sbin/peervpn

RUN mkdir -p /dev/net
#RUN mknod /dev/net/tun c 10 200
#RUN chmod 600 /dev/net/tun

EXPOSE 7000/udp
VOLUME /peervpn

#ENTRYPOINT [ "/usr/local/sbin/peervpn", "/etc/peervpn.conf" ]
