FROM phantom9999/dev_env:brpc_env_brpc_0.9.7

RUN cd /root && \
    wget https://github.com/google/fruit/archive/v3.5.0.tar.gz && \
    tar -xzf v3.5.0.tar.gz && \
    cd fruit-3.5.0 && \
    cmake . -DCMAKE_BUILD_TYPE=Release && \
    make -j2 && \
    make install && \
    cd /root && \
    rm -rf fruit-3.5.0 v3.5.0.tar.gz

RUN cd /root && \
    wget https://github.com/facebook/rocksdb/archive/v6.10.1.tar.gz && \
    tar -xzf v6.10.1.tar.gz && \
    cd rocksdb-6.10.1 && \
    cmake . -DWITH_GFLAGS=1 -DWITH_SNAPPY=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo && \
    make -j2 && \
    make install && \
    cd /root && \
    rm -rf rocksdb-6.10.1 v6.10.1.tar.gz


