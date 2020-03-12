FROM centos:latest
RUN yum install -y https://download.foldingathome.org/releases/public/release/fahclient/centos-6.7-64bit/v7.5/fahclient-7.5.1-1.x86_64.rpm \
	&& yum clean all \
	&& mkdir /fah \
	&& chown -Rv fahclient /fah
VOLUME /fah
USER fahclient
WORKDIR /fah
ADD start.sh /
CMD /start.sh

