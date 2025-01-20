FROM alpine
# build argument `--build-arg dir=demo/prod` to copy configurations dir
ARG dir

COPY $dir /kyos/remote_config 
COPY ./script.sh /

RUN chmod u+x ./script.sh

CMD "/script.sh"

