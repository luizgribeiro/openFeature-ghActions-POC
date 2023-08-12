FROM node:18-buster-slim

RUN apt-get update && apt-get install -y curl

RUN curl https://github.com/open-feature/flagd/releases/download/flagd%2Fv0.6.3/flagd_0.6.3_Linux_x86_64.tar.gz -L -o flagd.tar.gz

RUN tar -xvf flagd.tar.gz
