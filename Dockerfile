# base image set to track what most of our production machines seem to be running
FROM registry.access.redhat.com/ubi7/ubi

ENV container docker

RUN yum -y install git make wget binutils gcc gcc-c++ 

RUN git clone https://github.com/Beckhoff/ADS.git

RUN wget https://cmake.org/files/v3.13/cmake-3.13.0.tar.gz && tar zxvf cmake-3.* && cd cmake-3.* && ./bootstrap --prefix=/usr/local && make -j$(nproc) && make install

# make compatible
COPY RegistryAccess.cpp /ADS/AdsLib/

RUN cd ADS && mkdir build && cd build && cmake .. && make

RUN cd ADS