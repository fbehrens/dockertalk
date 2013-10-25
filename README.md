alias sd='sudo docker'

docker [OPTIONS] COMMAND [arg...]
 -H=[unix:///var/run/docker.sock]: tcp://host:port to bind/connect to or unix://path/to/socket to use

## Dockerfile
FROM

MAINTAINER Frank Behrens,fbehrens@gmail.com

RUN command

ADD relative_tar_or_dir target_directory

EXPOSE host:container # standart port redirection

CMD cmd will be overwritten by given parameters, as JSON executes without shell

ENTRYPOINT will be the executeble if this dockerfile to which parameters are piped to

## Commands
images  List images
build   Build a container from a Dockerfile
history Show the history of an image
insert  Insert a file in an image
commit  Create a new image from a container’s changes
rmi     Remove an image

ps      List  containers
  -a      also exited
  -n 2    show to count entries
run     Run a command in a new container
  -d      as a daemon
  -p      container:host      portforwarding
  -i      interactive

port    Lookup the public-facing port which is NAT-ed to PRIVATE_PORT
attach  Attach to a running container
start   Start a stopped container
restart Restart a running container
stop    Stop a running container
top     Lookup the running processes of a container
kill    Kill a running container
logs    Fetch the logs of a container
rm      Remove a container

search  Search for an image in the docker index
pull    Pull an image or a repository from the docker registry server
push    Push an image or a repository to the docker registry server
login   Register or Login to the docker registry server
tag     Tag an image into a repository

export  Stream the contents of a container as a tar archive
import  Create a new filesystem image from the contents of a tarball



sd run -p 8005:8000 ehazlett/shipyard
admin:shipyard


cp – Copy files/folders from the containers filesystem to the host path
diff – Inspect changes on a container’s filesystem

events – Get real time events from the server
inspect – Return low-level information on a container
wait – Block until a container stops, then print its exit code

version – Show the docker version information
info – Display system-wide information



alias sd='sudo docker'
sd
sd run



sd run -i ubuntu  /bin/sh
# will download ubuntu base image from
