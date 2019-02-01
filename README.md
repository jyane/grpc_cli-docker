# grpc_cli on Docker

grpc_cli is a [gRPC Comman Line Tool](https://github.com/grpc/grpc/blob/v1.7.2/doc/command_line_tool.md)

## Usage

``` sh
docker build . -t grpc_cli
docker run grpc_cli
```


### Use on GCCB (Google Cloud Container Builder)

``` sh
# build by GCCB

gcloud container builds submit --config cloudbuild.yaml .
gcloud docker -- pull gcr.io/${PROJECT_ID}/grpc_cli
docker run gcr.io/${PROJECT_ID}/grpc_cli

# Now you can get grpc_cli on GCCB
```
