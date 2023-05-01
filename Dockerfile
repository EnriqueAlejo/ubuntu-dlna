FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y minidlna

COPY minidlna.conf /etc/minidlna.conf

VOLUME /media/dlna

EXPOSE 1900/udp 8200/tcp

CMD ["minidlnad", "-S"]

CMD service minidlna start && tail -f /dev/null
