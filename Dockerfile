FROM opensuse/leap


RUN zypper install -y boost_1_66_0-devel libevent-devel sqlite3-devel libthrift-devel hiredis-devel protobuf-devel snappy-devel log4cpp-devel libopenssl-devel cmake make thrift


ENTRYPOINT ["$GITHUB_WORKSPACE}/${ENTRY_POINT}"]



