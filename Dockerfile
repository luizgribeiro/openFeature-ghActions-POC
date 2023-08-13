FROM node:18-bookworm-slim

RUN apt-get update && apt-get install -y curl

WORKDIR /app

RUN curl https://github.com/open-feature/flagd/releases/download/flagd%2Fv0.6.3/flagd_0.6.3_Linux_x86_64.tar.gz -L -o flagd.tar.gz

RUN tar -xvf flagd.tar.gz

COPY package.json package-lock.json ./

RUN npm ci

RUN ls

COPY index.js ./

COPY flags.yaml ./

COPY start.sh ./

ENTRYPOINT [ "/bin/bash", "start.sh" ]
