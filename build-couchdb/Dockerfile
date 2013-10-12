FROM ubuntu:12.04
MAINTAINER Frank Behrens, fbehrens@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y git help2man make gcc zlib1g-dev libssl-dev rake texinfo flex dctrl-tools libsctp-dev libxslt1-dev libcap2-bin ed

ADD build/ /opt/build-couchdb/build

# RUN cd opt               && git clone git://github.com/iriscouch/build-couchdb
# RUN cd opt/build-couchdb && git checkout f1b7916 && git submodule init && git submodule update && rake
# this does't work

RUN printf "[httpd]\nbind_address = 0.0.0.0" > /opt/build-couchdb/build/etc/couchdb/local.d/docker.ini

CMD ["/opt/build-couchdb/build/bin/couchdb"]
ENTRYPOINT ["/opt/build-couchdb/build/bin/couchdb"]
EXPOSE  5984
