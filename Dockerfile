FROM debian

RUN apt update && apt install curl cron -y && \
    curl  https://get.acme.sh | sh && \
    cp ~/.acme.sh/acme.sh /usr/local/bin/acme.sh && \
    apt-get clean && apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /acme.sh

# ENTRYPOINT ["acme.sh", "--config-home", "/acme.sh"]
