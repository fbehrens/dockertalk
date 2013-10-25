FROM ubuntu
MAINTAINER Frank Behrens, fbehrens@gmail.com

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get install -y g++
RUN apt-get install -y erlang-dev erlang-manpages erlang-base-hipe erlang-eunit erlang-nox erlang-xmerl erlang-inets

RUN apt-get install -y libmozjs185-dev libicu-dev libcurl4-gnutls-dev libtool wget

RUN cd /tmp ; wget http://www.bizdirusa.com/mirrors/apache/couchdb/source/1.4.0/apache-couchdb-1.4.0.tar.gz

RUN cd /tmp && tar xvzf apache-couchdb-1.4.0.tar.gz
RUN apt-get install -y make
RUN cd /tmp/apache-couchdb-* ; ./configure && make install

RUN printf "[httpd]\nbind_address = 0.0.0.0" > /usr/local/etc/couchdb/local.d/docker.ini
# \nport = 8000

EXPOSE 5984:5984
# this is the default couchdb port

# run -p 60000:5984 fbehrens/couchdb

CMD ["/usr/local/bin/couchdb"]

# build -t fbehrens/couchdb1 .