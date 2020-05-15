FROM centos:8

COPY main.sh /main.sh
COPY cleanup.sh /cleanup.sh
COPY setup.sh /setup.sh

ENTRYPOINT ["/main.sh"]

