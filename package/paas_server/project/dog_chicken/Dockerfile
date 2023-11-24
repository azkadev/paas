FROM ubuntu

WORKDIR /app/

ADD ./ /app/

ARG DEBIAN_FRONTEND=noninteractive

ENV PORT=5600

CMD ["paas_server"]