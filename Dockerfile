FROM opensuse/leap:15.1


COPY main.sh /main.sh

ENTRYPOINT ["/main.sh"]



