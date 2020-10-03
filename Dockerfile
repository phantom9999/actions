FROM opensuse/leap:15

RUN zypper search boost

COPY main.sh /main.sh
COPY cleanup.sh /cleanup.sh
COPY setup.sh /setup.sh

ENTRYPOINT ["/main.sh"]

