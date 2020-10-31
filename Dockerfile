FROM debian

ARG DOCUMENTROOT=/srv/
ARG SERVER_NAME=_

ENV DOCUMENTROOT=$DOCUMENTROOT
ENV SERVER_NAME=$SERVER_NAME

COPY index.html $DOCUMENTROOT/index.html
COPY run.sh /run.sh

RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN chmod 700 /run.sh

EXPOSE 80

CMD ["/run.sh"]
