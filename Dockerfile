# base image set to track what most of our production machines seem to be running
FROM registry.access.redhat.com/ubi7/ubi

ENV container docker

RUN yum -y install wget make

# runtime
RUN yum -y install scl-utils policycoreutils policycoreutils-python
RUN wget http://mirror.centos.org/centos/7/sclo/x86_64/rh/Packages/d/devtoolset-11-runtime-11.1-2.el7.x86_64.rpm && rpm -i devtoolset-11-runtime-11.1-2.el7.x86_64.rpm
# libstdc++-devel
RUN wget http://mirror.centos.org/centos/7/sclo/x86_64/rh/Packages/d/devtoolset-11-libstdc++-devel-11.2.1-9.1.el7.x86_64.rpm && rpm -i devtoolset-11-libstdc++-devel-11.2.1-9.1.el7.x86_64.rpm


# gcc


RUN wget http://mirror.centos.org/centos/7/sclo/x86_64/rh/Packages/d/devtoolset-11-binutils-2.36.1-1.el7.2.x86_64.rpm && rpm -i devtoolset-11-binutils-2.36.1-1.el7.2.x86_64.rpm
RUN wget http://mirror.centos.org/centos/7/sclo/x86_64/rh/Packages/d/devtoolset-11-gcc-11.2.1-9.1.el7.x86_64.rpm && rpm -i devtoolset-11-gcc-11.2.1-9.1.el7.x86_64.rpm
RUN wget 

COPY adstool /
