FROM centos:7

ADD . /home/work/

RUN yum install -y epel-release; \
    yum clean all; \
    rm -rf /var/cache/yum/*;

RUN yum install -y cmake3 gcc-c++ make autoconf automake libtool flex byacc \
    zlib-devel bzip2-devel openssl-devel sqlite-devel snappy-devel libevent-devel \
    protobuf-compiler protobuf-devel protobuf-static; \
        yum clean all; \
        rm -rf /var/cache/yum/*;


#RUN tar -xzf openssl-1.0.1g.tar.gz; cd openssl-1.0.1g; make -j8 && make install; cd ..; rm -rf openssl-1.0.1g;

#RUN tar -xf snappy-1.1.8.tar.gz; \
#    cd snappy-1.1.8; \
#    cmake .; \
#    make -j8 && make install; \
#    cd ..; rm -rf snappy-1.1.8;

#RUN tar -xf libevent-2.1.12-stable.tar.gz; \
#    cd libevent-2.1.12-stable; \
#    ./configure --enable-shared=no --with-pic; \
#    make -j8 && make install; \
#    cd ..; rm -rf libevent-2.1.12-stable;

RUN cd /home/work/tars; tar -xf protobuf-3.7.0.tar.gz; \
    cd protobuf-3.7.0; \
    sh autogen.sh; \
    ./configure --with-pic --enable-shared=no; \
    make -j4 && make install; \
    cd ..; rm -rf protobuf-3.7.0;

RUN cd /home/work/tars; tar -xf boost_1_58_0.tar.gz \
    cd boost_1_58_0; \
    sh bootstrap.sh; \
    ./b2 variant=release link=static threading=multi runtime-link=shared -j4 install \
    cd ..; rm -rf boost_1_58_0;

RUN cd /home/work/tars; tar -xf thrift-0.10.0.tar.gz; \
    cd thrift-0.10.0; \
    sh bootstrap.sh; \
    ./configure --with-perl=no --with-python=no --with-pic --enable-shared=no; \
    make -j4 && make install; \
    cd ..; rm -rf thrift-0.10.0;

RUN cd /home/work/tars; tar -xf fmt-7.0.3.tar.gz; \
    cd fmt-7.0.3; \
    cmake3 -DFMT_TEST=NO .; make -j4 && make install; \
    cd ..; rm -rf fmt-7.0.3;

RUN cd /home/work/tars; tar -xf hiredis-0.13.3.tar.gz \
    cd hiredis-0.13.3; \
    make -j4 && make install; \
    rm /usr/local/lib/libhiredis.so.0.13 /usr/local/lib/libhiredis.so; \
    cd ..; rm -rf hiredis-0.13.3;


