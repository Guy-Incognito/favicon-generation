FROM ubuntu:20.10

RUN apt update && apt install -y --no-install-recommends imagemagick pngquant

ENV PNG_QUALITY=50

COPY favicon-generation.sh /bin/favicon-generation

RUN mkdir /data

WORKDIR /data

ENTRYPOINT ["/bin/favicon-generation"]
