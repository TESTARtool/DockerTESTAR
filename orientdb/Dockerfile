FROM orientdb

ENV ORIENTDB_ROOT_PASSWORD root12345

COPY orientdb_bg.sh orientdb_bg.sh

RUN ./orientdb_bg.sh && \
    bin/console.sh 'CREATE DATABASE remote:localhost/testar root root12345' && \
    bin/shutdown.sh
