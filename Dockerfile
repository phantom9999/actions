FROM fedora:33
RUN dnf install -y boost-devel gperftools-devel snappy-devel openssl-devel gflags-devel protobuf-devel protobuf-compiler leveldb-devel git cmake gcc-c++ make wget

RUN cd /root; \
    wget https://github.com/apache/incubator-brpc/archive/0.9.7.tar.gz; \
    tar -xzf 0.9.7.tar.gz; \
    cd incubator-brpc-0.9.7 \
    cmake . ; \
    make -j8; \
    make install



