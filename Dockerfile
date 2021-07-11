FROM phzfi/ubuntu32:bionic-latest

ADD scripts/install-sh2ju.sh
ADD scripts/provision.sh
ADD tests/* /opt/

RUN ./provision.sh

ADD etc/* /etc

CMD ["/etc/init.d/nginx"]
