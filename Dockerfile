FROM centos/python-35-centos7:latest
MAINTAINER Tobias Florek <tob@butter.sh>

USER 0

RUN yum install -y rh-postgresql95 rh-postgresql95-postgresql-devel \
 && yum clean all \
 && sed -i '$a source scl_source enable rh-postgresql95' \
           /opt/app-root/etc/scl_enable

USER 1001
