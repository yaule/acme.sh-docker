FROM debian

RUN apt update && apt install curl cron -y && \
    curl  https://get.acme.sh | sh && \
    cp ~/.acme.sh/acme.sh /usr/local/bin/acme.sh

VOLUME /acme.sh

ENTRYPOINT ["acme.sh", "--config-home", "/acme.sh"]
