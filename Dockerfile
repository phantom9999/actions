FROM centos:7


RUN yum install -y epel-release; \
    yum clean all; \
    rm -rf /var/cache/yum/*;

RUN yum install -y cmake3 gcc-c++ make autoconf automake libtool flex byacc \
    zlib-devel bzip2-devel openssl-devel sqlite-devel snappy-devel libevent-devel \
        yum clean all; \
        rm -rf /var/cache/yum/*;

RUN cd /tmp; mkdir build; cd build; \
    wget https://github.com/protocolbuffers/protobuf/archive/v3.7.0.tar.gz -O protobuf-3.7.0.tar.gz; \
    tar -xf protobuf-3.7.0.tar.gz; \
    cd protobuf-3.7.0; \
    sh autogen.sh; \
    ./configure --with-pic --enable-shared=no; \
    make -j4 && make install; \
    cd /tmp; rm -rf build;

RUN cd /tmp; mkdir build; cd build; \
    wget https://sourceforge.net/projects/boost/files/boost/1.58.0/boost_1_58_0.tar.gz/download -O boost_1_58_0.tar.gz; \
    tar -xf boost_1_58_0.tar.gz; \
    cd boost_1_58_0; \
    sh bootstrap.sh; \
    ./b2 variant=release link=static threading=multi runtime-link=shared -j4 install \
    cd /tmp; rm -rf build;

RUN cd /tmp; mkdir build; cd build; \
    wget https://github.com/apache/thrift/archive/0.10.0.tar.gz -O thrift-0.10.0.tar.gz; \
    tar -xf thrift-0.10.0.tar.gz; \
    cd thrift-0.10.0; \
    sh bootstrap.sh; \
    ./configure --with-perl=no --with-python=no --with-pic --enable-shared=no; \
    make -j4 && make install; \
    cd /tmp; rm -rf build;

RUN cd /tmp; mkdir build; cd build; \
    wget https://github.com/fmtlib/fmt/archive/7.0.3.tar.gz -O fmt-7.0.3.tar.gz; \
    tar -xf fmt-7.0.3.tar.gz; \
    cd fmt-7.0.3; \
    cmake3 -DFMT_TEST=NO .; make -j4 && make install; \
    cd /tmp; rm -rf build;

RUN cd /tmp; mkdir build; cd build; \
    wget https://github.com/redis/hiredis/archive/v0.14.1.tar.gz -O hiredis-0.13.3.tar.gz; \
    tar -xf hiredis-0.13.3.tar.gz \
    cd hiredis-0.13.3; \
    make -j4 && make install; \
    rm /usr/local/lib/libhiredis.so.0.13 /usr/local/lib/libhiredis.so; \
    cd /tmp; rm -rf build;
