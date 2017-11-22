FROM ubuntu:16.04

RUN apt-get -y update && \
    apt-get -y install autoconf build-essential gcc git libtool libgflags-dev

RUN git clone --recursive https://github.com/grpc/grpc.git

WORKDIR grpc
RUN git checkout v1.7.2

RUN make grpc_cli

ENTRYPOINT ["./bins/opt/grpc_cli"]
