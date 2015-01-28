FROM ubuntu:14.04
MAINTAINER Dmitry Zhukov <dmitry.zhukov@gmail.com>

ADD peervpn.conf /etc/peervpn.conf
ADD peervpn /usr/local/sbin/peervpn

#EXPOSE 7000
EXPOSE 7000/udp
VOLUME /peervpn

ENTRYPOINT [ "/usr/local/sbin/peervpn", "/etc/peervpn.conf" ]
