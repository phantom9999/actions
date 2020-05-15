FROM opensuse/leap:15.1


COPY main.sh /main.sh
COPY cleanup.sh /cleanup.sh

ENTRYPOINT ["/main.sh"]



