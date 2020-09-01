FROM alpine:3.12.0
LABEL authors="Fazendaaa"
LABEL authors="nds-front"

RUN [ "apk", "add", "--no-cache", "nodejs", "npm" ]

WORKDIR /usr/src

COPY package.json .

RUN [ "npm", "install" ]

COPY . .
