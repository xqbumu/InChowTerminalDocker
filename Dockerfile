FROM debian

MAINTAINER xqbumu "xqbumu@gmail.com"

RUN apt-get update

# gotty
#RUN apt-get install -y golang git
#RUN go get github.com/yudai/gotty

# wetty
RUN apt-get install -y npm
RUN cd /opt
RUN git clone https://github.com/krishnasrinivas/wetty
RUN cd wetty
RUN npm install

RUN node app.js -p 3000

EXPOSE 3000