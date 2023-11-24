FROM ubuntu

WORKDIR /app/

ADD ./ /app/

ARG DEBIAN_FRONTEND=noninteractive

ENV PORT=1851

CMD ["paas_server"]