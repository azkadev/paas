FROM ubuntu

WORKDIR /app/

ADD ./ /app/

ARG DEBIAN_FRONTEND=noninteractive

ENV PORT=2933

CMD ["paas_server"]