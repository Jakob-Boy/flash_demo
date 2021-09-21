FROM centos:7

RUN yum install -y java-1.8.0-openjdk unzip

WORKDIR /root/zfile

RUN wget https://c.jun6.net/ZFILE/zfile-release.war && unzip zfile-release.war && rm -rf zfile-release.war && chmod +x /root/zfile/bin/*.sh

EXPOSE 8080

CMD /root/zfile/bin/start.sh
