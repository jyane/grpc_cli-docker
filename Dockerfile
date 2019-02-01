FROM grpc/cxx:latest

RUN apt-get update && apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev

RUN cd /var/local/git/grpc && make grpc_cli

WORKDIR /var/local/git/grpc/bins/opt
ENTRYPOINT ["./grpc_cli"]
