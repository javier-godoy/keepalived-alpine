FROM alpine:3.13

RUN apk --no-cache add git openssh

RUN git clone https://github.com/acassen/keepalived.git

RUN cd keepalived && \
   # git checkout tags/v2.2.2 -b local && \
    apk add --no-cache autoconf automake make gcc iptables-dev ipset-dev musl-dev openssl-dev &&\
        ./build_setup &&\
        ./configure --disable-libnl&&\
        make --jobs=8 &&\
        make install

CMD echo