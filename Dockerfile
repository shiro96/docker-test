FROM centos:7
MAINTAINER shiro96
RUN yum -y update; yum clean all;
RUN yum -y install epel-release; yum clean all;
RUN yum -y install httpd; yum clean all;
RUN yum -y install php; yum clean all;

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
