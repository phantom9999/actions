FROM opensuse/leap:15.1


#RUN zypper install -y libboost_system1_66_0-devel libboost_log1_66_0-devel libboost_filesystem1_66_0-devel libevent-devel sqlite3-devel libthrift-devel hiredis-devel protobuf-devel snappy-devel log4cpp-devel libopenssl-devel cmake make thrift


# Copies your code file from your action repository to the filesystem path `/` of the container
#COPY entrypoint.sh /entrypoint.sh
# Dockerfile    action.yml    entrypoint.sh setup.sh
#README.md     cleanup.sh    main.sh
COPY setup.sh /setup.sh
COPY main.sh /main.sh
COPY cleanup.sh /cleanup.sh

# Executes `entrypoint.sh` when the Docker container starts up 
ENTRYPOINT ["/main.sh"]



