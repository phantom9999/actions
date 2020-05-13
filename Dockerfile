FROM opensuse/leap:15.1


RUN zypper install -y libboost_system1_66_0-devel libboost_log1_66_0-devel libboost_filesystem1_66_0-devel libevent-devel sqlite3-devel libthrift-devel hiredis-devel protobuf-devel snappy-devel log4cpp-devel libopenssl-devel cmake make thrift


ENTRYPOINT ["$GITHUB_WORKSPACE}/${ENTRY_POINT}"]



