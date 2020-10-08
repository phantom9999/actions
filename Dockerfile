FROM phantom9999/dev_env:env_torrent_latest

COPY main.sh /main.sh
COPY cleanup.sh /cleanup.sh
COPY setup.sh /setup.sh

ENTRYPOINT ["/main.sh"]

