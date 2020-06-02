FROM fedora:33
RUN dnf install -y boost-devel gperftools-devel snappy-devel openssl-devel gflags-devel protobuf-devel protobuf-compiler leveldb-devel git cmake gcc-c++ make wget; \
        dnf clean all; \
        rm -rf /var/cache/dnf/*

RUN cd /root; \
    wget https://github.com/apache/incubator-brpc/archive/0.9.7.tar.gz; \
    tar -xzf 0.9.7.tar.gz ; \
    cd /root/incubator-brpc-0.9.7 ;\
    cmake . ; \
    make -j8; \
    make install; \
    cd /root ; \
    rm -rf /root/incubator-brpc-0.9.7 /root/0.9.7.tar.gz ;



