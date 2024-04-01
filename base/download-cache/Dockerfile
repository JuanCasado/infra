FROM debian:12.5

ADD download/ /download/
ADD cache.sh /download

RUN mkdir -p /download-cache &&\
    /download/cache.sh &&\
    rm -fr /download
