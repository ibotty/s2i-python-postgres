FROM centos/python-34-centos7:latest
MAINTAINER Tobias Florek <tob@butter.sh>

USER 0

RUN yum install -y rh-postgresql94 rh-postgresql94-postgresql-devel \
 && sed -i '$a source scl_source enable rh-postgresql94' \
           /opt/app-root/etc/scl_enable

USER 1001
