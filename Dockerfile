FROM fedora:33
RUN dnf install boost-devel gperftools-devel snappy-devel openssl-devel gflags-devel protobuf-devel protobuf-compiler leveldb-devel git cmake gcc-c++ make

RUN cd /root; wget https://github.com/apache/incubator-brpc/archive/0.9.7.tar.gz; tar -xzf 0.9.7.tar.gz;
RUN mkdir -p /root/0.9.7/build; cd /root/0.9.7/build;cmake ..;make -j8;make install



