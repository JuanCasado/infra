FROM haskell:9.2.5

RUN git clone https://github.com/mbrubeck/compleat.git
RUN make -C compleat install
RUN mkdir /haskell-cache &&\
    cp /root/.local/bin/compleat /download-cache &&\
    cp ~/.bash_completion.d/compleat_setup /download-cache

