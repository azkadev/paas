FROM ubuntu:latest

WORKDIR /app/

ADD ./ /app/

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y sudo
ENV PORT=8098

CMD ["paas_server"]