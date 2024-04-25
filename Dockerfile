FROM golang:1.20

WORKDIR /app/

RUN apt-get update && apt-get install -y librdkafka-dev 

RUN curl -fsSL \
  https://raw.githubusercontent.com/pressly/goose/master/install.sh |\
  sh 


CMD ["tail", "-f", "/dev/null"]