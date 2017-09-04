FROM ubuntu:xenial

COPY snaplogin /
COPY run.sh /

RUN apt -y update && apt -y install nano expect charm-tools git && chmod +x /run.sh && rm -rf /var/lib/apt/lists/*

ENV LC_ALL=C.UTF-8

CMD /run.sh
