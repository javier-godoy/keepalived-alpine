FROM alpine:3.13

#git and OpenSSH
RUN apk --no-cache add git openssh

#Shared C build chain
RUN apk --no-cache add autoconf make automake gcc libc-dev

#Project dependencies
RUN apk --no-cache add iptables-dev ipset-dev musl-dev openssl-dev

RUN git clone https://github.com/acassen/keepalived.git

RUN cd keepalived && \
   # git checkout tags/v2.2.2 -b local && \
        ./build_setup &&\
        ./configure --disable-libnl&&\
        make --jobs=8 &&\
        make install

CMD echo