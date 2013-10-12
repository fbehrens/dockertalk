RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y git help2man make gcc zlib1g-dev libssl-dev rake texinfo flex dctrl-tools libsctp-dev libxslt1-dev libcap2-bin ed
RUN cd opt               && git clone git://github.com/iriscouch/build-couchdb
RUN cd opt/build-couchdb && git submodule init && git submodule update && rake


docker build -t fbehrens/couchdb - < /pathto/Dockerfile_couchdb

> docker run 6cc3fc7a374d cat opt/build-couchdb/rake.log | tail -1000
bash: no job control in this shell
root@byymir:/opt/sublime_text# docker run 6cc3fc7a374d cat opt/build-couchdb/rak
e.log | tail -1000
STDOUT #define HAVE_IOCTL_FIONBIO 1
STDOUT #define HAVE_IOCTL_SIOCGIFADDR 1
STDOUT #define HAVE_LOCALTIME_R 1
STDOUT #define HAVE_SYS_TYPES_H 1
STDOUT #define HAVE_POLL_H 1
STDOUT #define HAVE_SYS_POLL_H 1
STDOUT #define HAVE_POLL 1
STDOUT #define HAVE_POLL_FINE 1
STDOUT #define HAVE_SETSOCKOPT 1
STDOUT #define HAVE_SYS_TYPES_H 1
STDOUT #define HAVE_SIGNAL_H 1
STDOUT #define HAVE_SIGACTION 1
STDOUT #define HAVE_SIGINTERRUPT 1
STDOUT #define HAVE_SIGNAL 1
STDOUT #define HAVE_SYS_TYPES_H 1
STDOUT #define HAVE_SETJMP_H 1
STDOUT #define HAVE_SIGSETJMP 1
STDOUT #define HAVE_SOCKET 1
STDOUT #define HAVE_SOCKETPAIR 1
STDOUT #define HAVE_STRCASECMP 1
STDOUT #define HAVE_STRDUP 1
STDOUT #define HAVE_STRERROR_R 1
STDOUT #define HAVE_POSIX_STRERROR_R 1
STDOUT #define STRERROR_R_TYPE_ARG3 size_t
STDOUT #define HAVE_STRNCASECMP 1
STDOUT #define HAVE_STRSTR 1
STDOUT #define HAVE_STRTOK_R 1
STDOUT #define HAVE_STRTOLL 1
STDOUT #define HAVE_SYS_TYPES_H 1
STDOUT #define HAVE_SYS_UIO_H 1
STDOUT #define HAVE_WRITEV 1
STDOUT #define HAVE_FORK 1
STDOUT #define HAVE_GETEUID 1
STDOUT #define HAVE_GETPPID 1
STDOUT #define HAVE_GETPROTOBYNAME 1
STDOUT #define HAVE_GETPWUID 1
STDOUT #define HAVE_GETRLIMIT 1
STDOUT #define HAVE_GETTIMEOFDAY 1
STDOUT #define HAVE_INET_ADDR 1
STDOUT #define HAVE_PERROR 1
STDOUT #define HAVE_PIPE 1
STDOUT #define HAVE_SETLOCALE 1
STDOUT #define HAVE_SETRLIMIT 1
STDOUT #define HAVE_UNAME 1
STDOUT #define HAVE_UTIME 1
STDOUT #define HAVE_SYS_TYPES_H 1
STDOUT #define HAVE_SYS_SOCKET_H 1
STDOUT #define HAVE_NETDB_H 1
STDOUT #define GETNAMEINFO_TYPE_ARG2 socklen_t
STDOUT #define GETNAMEINFO_TYPE_ARG46 socklen_t
STDOUT #define GETNAMEINFO_TYPE_ARG7 int
STDOUT #define GETNAMEINFO_QUAL_ARG1 const
STDOUT #define GETNAMEINFO_TYPE_ARG1 struct sockaddr *
STDOUT #define HAVE_GETNAMEINFO 1
STDOUT #define ENABLE_IPV6 1
STDOUT #define HAVE_STDIO_H 1
STDOUT #define HAVE_SYS_TYPES_H 1
STDOUT #define HAVE_SYS_SOCKET_H 1
STDOUT #define HAVE_NETDB_H 1
STDOUT #define HAVE_NETINET_IN_H 1
STDOUT #define HAVE_ARPA_INET_H 1
STDOUT #define NTLM_WB_ENABLED 1
STDOUT #define NTLM_WB_FILE "/usr/bin/ntlm_auth"
STDOUT #define USE_TLS_SRP 1
STDOUT
STDOUT configure: exit 0
STDOUT == End of config.log ==
STDOUT rm_f /opt/build-couchdb/build/bin/autoconf
STDOUT rm_f /opt/build-couchdb/build/bin/autoreconf
STDOUT rm_f /opt/build-couchdb/build/bin/autoheader
STDOUT rm_f /opt/build-couchdb/build/bin/autom4te
STDOUT Making all in lib
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT make  all-am
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT file.lo -MD -MP -MF .deps/file.Tpo -c -o file.lo /opt/build-couchdb/dependencies/curl/lib/file.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT file.lo -MD -MP -MF .deps/file.Tpo -c /opt/build-couchdb/dependencies/curl/lib/file.c  -fPIC -DPIC -o .libs/file.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT file.lo -MD -MP -MF .deps/file.Tpo -c /opt/build-couchdb/dependencies/curl/lib/file.c  -fPIC -DPIC -o file.o >/dev/null 2>&1
STDOUT mv -f .deps/file.Tpo .deps/file.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT timeval.lo -MD -MP -MF .deps/timeval.Tpo -c -o timeval.lo /opt/build-couchdb/dependencies/curl/lib/timeval.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT timeval.lo -MD -MP -MF .deps/timeval.Tpo -c /opt/build-couchdb/dependencies/curl/lib/timeval.c  -fPIC -DPIC -o .libs/timeval.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT timeval.lo -MD -MP -MF .deps/timeval.Tpo -c /opt/build-couchdb/dependencies/curl/lib/timeval.c  -fPIC -DPIC -o timeval.o >/dev/null 2>&1
STDOUT mv -f .deps/timeval.Tpo .deps/timeval.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT base64.lo -MD -MP -MF .deps/base64.Tpo -c -o base64.lo /opt/build-couchdb/dependencies/curl/lib/base64.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT base64.lo -MD -MP -MF .deps/base64.Tpo -c /opt/build-couchdb/dependencies/curl/lib/base64.c  -fPIC -DPIC -o .libs/base64.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT base64.lo -MD -MP -MF .deps/base64.Tpo -c /opt/build-couchdb/dependencies/curl/lib/base64.c  -fPIC -DPIC -o base64.o >/dev/null 2>&1
STDOUT mv -f .deps/base64.Tpo .deps/base64.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hostip.lo -MD -MP -MF .deps/hostip.Tpo -c -o hostip.lo /opt/build-couchdb/dependencies/curl/lib/hostip.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostip.lo -MD -MP -MF .deps/hostip.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostip.c  -fPIC -DPIC -o .libs/hostip.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostip.lo -MD -MP -MF .deps/hostip.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostip.c  -fPIC -DPIC -o hostip.o >/dev/null 2>&1
STDOUT mv -f .deps/hostip.Tpo .deps/hostip.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT progress.lo -MD -MP -MF .deps/progress.Tpo -c -o progress.lo /opt/build-couchdb/dependencies/curl/lib/progress.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT progress.lo -MD -MP -MF .deps/progress.Tpo -c /opt/build-couchdb/dependencies/curl/lib/progress.c  -fPIC -DPIC -o .libs/progress.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT progress.lo -MD -MP -MF .deps/progress.Tpo -c /opt/build-couchdb/dependencies/curl/lib/progress.c  -fPIC -DPIC -o progress.o >/dev/null 2>&1
STDOUT mv -f .deps/progress.Tpo .deps/progress.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT formdata.lo -MD -MP -MF .deps/formdata.Tpo -c -o formdata.lo /opt/build-couchdb/dependencies/curl/lib/formdata.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT formdata.lo -MD -MP -MF .deps/formdata.Tpo -c /opt/build-couchdb/dependencies/curl/lib/formdata.c  -fPIC -DPIC -o .libs/formdata.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT formdata.lo -MD -MP -MF .deps/formdata.Tpo -c /opt/build-couchdb/dependencies/curl/lib/formdata.c  -fPIC -DPIC -o formdata.o >/dev/null 2>&1
STDOUT mv -f .deps/formdata.Tpo .deps/formdata.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT cookie.lo -MD -MP -MF .deps/cookie.Tpo -c -o cookie.lo /opt/build-couchdb/dependencies/curl/lib/cookie.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT cookie.lo -MD -MP -MF .deps/cookie.Tpo -c /opt/build-couchdb/dependencies/curl/lib/cookie.c  -fPIC -DPIC -o .libs/cookie.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT cookie.lo -MD -MP -MF .deps/cookie.Tpo -c /opt/build-couchdb/dependencies/curl/lib/cookie.c  -fPIC -DPIC -o cookie.o >/dev/null 2>&1
STDOUT mv -f .deps/cookie.Tpo .deps/cookie.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT http.lo -MD -MP -MF .deps/http.Tpo -c -o http.lo /opt/build-couchdb/dependencies/curl/lib/http.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http.lo -MD -MP -MF .deps/http.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http.c  -fPIC -DPIC -o .libs/http.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http.lo -MD -MP -MF .deps/http.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http.c  -fPIC -DPIC -o http.o >/dev/null 2>&1
STDOUT mv -f .deps/http.Tpo .deps/http.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT sendf.lo -MD -MP -MF .deps/sendf.Tpo -c -o sendf.lo /opt/build-couchdb/dependencies/curl/lib/sendf.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT sendf.lo -MD -MP -MF .deps/sendf.Tpo -c /opt/build-couchdb/dependencies/curl/lib/sendf.c  -fPIC -DPIC -o .libs/sendf.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT sendf.lo -MD -MP -MF .deps/sendf.Tpo -c /opt/build-couchdb/dependencies/curl/lib/sendf.c  -fPIC -DPIC -o sendf.o >/dev/null 2>&1
STDOUT mv -f .deps/sendf.Tpo .deps/sendf.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT ftp.lo -MD -MP -MF .deps/ftp.Tpo -c -o ftp.lo /opt/build-couchdb/dependencies/curl/lib/ftp.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ftp.lo -MD -MP -MF .deps/ftp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ftp.c  -fPIC -DPIC -o .libs/ftp.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ftp.lo -MD -MP -MF .deps/ftp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ftp.c  -fPIC -DPIC -o ftp.o >/dev/null 2>&1
STDOUT mv -f .deps/ftp.Tpo .deps/ftp.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT url.lo -MD -MP -MF .deps/url.Tpo -c -o url.lo /opt/build-couchdb/dependencies/curl/lib/url.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT url.lo -MD -MP -MF .deps/url.Tpo -c /opt/build-couchdb/dependencies/curl/lib/url.c  -fPIC -DPIC -o .libs/url.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT url.lo -MD -MP -MF .deps/url.Tpo -c /opt/build-couchdb/dependencies/curl/lib/url.c  -fPIC -DPIC -o url.o >/dev/null 2>&1
STDOUT mv -f .deps/url.Tpo .deps/url.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT dict.lo -MD -MP -MF .deps/dict.Tpo -c -o dict.lo /opt/build-couchdb/dependencies/curl/lib/dict.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT dict.lo -MD -MP -MF .deps/dict.Tpo -c /opt/build-couchdb/dependencies/curl/lib/dict.c  -fPIC -DPIC -o .libs/dict.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT dict.lo -MD -MP -MF .deps/dict.Tpo -c /opt/build-couchdb/dependencies/curl/lib/dict.c  -fPIC -DPIC -o dict.o >/dev/null 2>&1
STDOUT mv -f .deps/dict.Tpo .deps/dict.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT if2ip.lo -MD -MP -MF .deps/if2ip.Tpo -c -o if2ip.lo /opt/build-couchdb/dependencies/curl/lib/if2ip.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT if2ip.lo -MD -MP -MF .deps/if2ip.Tpo -c /opt/build-couchdb/dependencies/curl/lib/if2ip.c  -fPIC -DPIC -o .libs/if2ip.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT if2ip.lo -MD -MP -MF .deps/if2ip.Tpo -c /opt/build-couchdb/dependencies/curl/lib/if2ip.c  -fPIC -DPIC -o if2ip.o >/dev/null 2>&1
STDOUT mv -f .deps/if2ip.Tpo .deps/if2ip.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT speedcheck.lo -MD -MP -MF .deps/speedcheck.Tpo -c -o speedcheck.lo /opt/build-couchdb/dependencies/curl/lib/speedcheck.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT speedcheck.lo -MD -MP -MF .deps/speedcheck.Tpo -c /opt/build-couchdb/dependencies/curl/lib/speedcheck.c  -fPIC -DPIC -o .libs/speedcheck.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT speedcheck.lo -MD -MP -MF .deps/speedcheck.Tpo -c /opt/build-couchdb/dependencies/curl/lib/speedcheck.c  -fPIC -DPIC -o speedcheck.o >/dev/null 2>&1
STDOUT mv -f .deps/speedcheck.Tpo .deps/speedcheck.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT ldap.lo -MD -MP -MF .deps/ldap.Tpo -c -o ldap.lo /opt/build-couchdb/dependencies/curl/lib/ldap.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ldap.lo -MD -MP -MF .deps/ldap.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ldap.c  -fPIC -DPIC -o .libs/ldap.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ldap.lo -MD -MP -MF .deps/ldap.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ldap.c  -fPIC -DPIC -o ldap.o >/dev/null 2>&1
STDOUT mv -f .deps/ldap.Tpo .deps/ldap.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT ssluse.lo -MD -MP -MF .deps/ssluse.Tpo -c -o ssluse.lo /opt/build-couchdb/dependencies/curl/lib/ssluse.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ssluse.lo -MD -MP -MF .deps/ssluse.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ssluse.c  -fPIC -DPIC -o .libs/ssluse.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ssluse.lo -MD -MP -MF .deps/ssluse.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ssluse.c  -fPIC -DPIC -o ssluse.o >/dev/null 2>&1
STDOUT mv -f .deps/ssluse.Tpo .deps/ssluse.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT version.lo -MD -MP -MF .deps/version.Tpo -c -o version.lo /opt/build-couchdb/dependencies/curl/lib/version.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT version.lo -MD -MP -MF .deps/version.Tpo -c /opt/build-couchdb/dependencies/curl/lib/version.c  -fPIC -DPIC -o .libs/version.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT version.lo -MD -MP -MF .deps/version.Tpo -c /opt/build-couchdb/dependencies/curl/lib/version.c  -fPIC -DPIC -o version.o >/dev/null 2>&1
STDOUT mv -f .deps/version.Tpo .deps/version.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT getenv.lo -MD -MP -MF .deps/getenv.Tpo -c -o getenv.lo /opt/build-couchdb/dependencies/curl/lib/getenv.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT getenv.lo -MD -MP -MF .deps/getenv.Tpo -c /opt/build-couchdb/dependencies/curl/lib/getenv.c  -fPIC -DPIC -o .libs/getenv.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT getenv.lo -MD -MP -MF .deps/getenv.Tpo -c /opt/build-couchdb/dependencies/curl/lib/getenv.c  -fPIC -DPIC -o getenv.o >/dev/null 2>&1
STDOUT mv -f .deps/getenv.Tpo .deps/getenv.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT escape.lo -MD -MP -MF .deps/escape.Tpo -c -o escape.lo /opt/build-couchdb/dependencies/curl/lib/escape.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT escape.lo -MD -MP -MF .deps/escape.Tpo -c /opt/build-couchdb/dependencies/curl/lib/escape.c  -fPIC -DPIC -o .libs/escape.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT escape.lo -MD -MP -MF .deps/escape.Tpo -c /opt/build-couchdb/dependencies/curl/lib/escape.c  -fPIC -DPIC -o escape.o >/dev/null 2>&1
STDOUT mv -f .deps/escape.Tpo .deps/escape.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT mprintf.lo -MD -MP -MF .deps/mprintf.Tpo -c -o mprintf.lo /opt/build-couchdb/dependencies/curl/lib/mprintf.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT mprintf.lo -MD -MP -MF .deps/mprintf.Tpo -c /opt/build-couchdb/dependencies/curl/lib/mprintf.c  -fPIC -DPIC -o .libs/mprintf.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT mprintf.lo -MD -MP -MF .deps/mprintf.Tpo -c /opt/build-couchdb/dependencies/curl/lib/mprintf.c  -fPIC -DPIC -o mprintf.o >/dev/null 2>&1
STDOUT mv -f .deps/mprintf.Tpo .deps/mprintf.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT telnet.lo -MD -MP -MF .deps/telnet.Tpo -c -o telnet.lo /opt/build-couchdb/dependencies/curl/lib/telnet.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT telnet.lo -MD -MP -MF .deps/telnet.Tpo -c /opt/build-couchdb/dependencies/curl/lib/telnet.c  -fPIC -DPIC -o .libs/telnet.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT telnet.lo -MD -MP -MF .deps/telnet.Tpo -c /opt/build-couchdb/dependencies/curl/lib/telnet.c  -fPIC -DPIC -o telnet.o >/dev/null 2>&1
STDOUT mv -f .deps/telnet.Tpo .deps/telnet.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT netrc.lo -MD -MP -MF .deps/netrc.Tpo -c -o netrc.lo /opt/build-couchdb/dependencies/curl/lib/netrc.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT netrc.lo -MD -MP -MF .deps/netrc.Tpo -c /opt/build-couchdb/dependencies/curl/lib/netrc.c  -fPIC -DPIC -o .libs/netrc.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT netrc.lo -MD -MP -MF .deps/netrc.Tpo -c /opt/build-couchdb/dependencies/curl/lib/netrc.c  -fPIC -DPIC -o netrc.o >/dev/null 2>&1
STDOUT mv -f .deps/netrc.Tpo .deps/netrc.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT getinfo.lo -MD -MP -MF .deps/getinfo.Tpo -c -o getinfo.lo /opt/build-couchdb/dependencies/curl/lib/getinfo.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT getinfo.lo -MD -MP -MF .deps/getinfo.Tpo -c /opt/build-couchdb/dependencies/curl/lib/getinfo.c  -fPIC -DPIC -o .libs/getinfo.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT getinfo.lo -MD -MP -MF .deps/getinfo.Tpo -c /opt/build-couchdb/dependencies/curl/lib/getinfo.c  -fPIC -DPIC -o getinfo.o >/dev/null 2>&1
STDOUT mv -f .deps/getinfo.Tpo .deps/getinfo.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT transfer.lo -MD -MP -MF .deps/transfer.Tpo -c -o transfer.lo /opt/build-couchdb/dependencies/curl/lib/transfer.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT transfer.lo -MD -MP -MF .deps/transfer.Tpo -c /opt/build-couchdb/dependencies/curl/lib/transfer.c  -fPIC -DPIC -o .libs/transfer.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT transfer.lo -MD -MP -MF .deps/transfer.Tpo -c /opt/build-couchdb/dependencies/curl/lib/transfer.c  -fPIC -DPIC -o transfer.o >/dev/null 2>&1
STDOUT mv -f .deps/transfer.Tpo .deps/transfer.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT strequal.lo -MD -MP -MF .deps/strequal.Tpo -c -o strequal.lo /opt/build-couchdb/dependencies/curl/lib/strequal.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strequal.lo -MD -MP -MF .deps/strequal.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strequal.c  -fPIC -DPIC -o .libs/strequal.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strequal.lo -MD -MP -MF .deps/strequal.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strequal.c  -fPIC -DPIC -o strequal.o >/dev/null 2>&1
STDOUT mv -f .deps/strequal.Tpo .deps/strequal.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT easy.lo -MD -MP -MF .deps/easy.Tpo -c -o easy.lo /opt/build-couchdb/dependencies/curl/lib/easy.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT easy.lo -MD -MP -MF .deps/easy.Tpo -c /opt/build-couchdb/dependencies/curl/lib/easy.c  -fPIC -DPIC -o .libs/easy.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT easy.lo -MD -MP -MF .deps/easy.Tpo -c /opt/build-couchdb/dependencies/curl/lib/easy.c  -fPIC -DPIC -o easy.o >/dev/null 2>&1
STDOUT mv -f .deps/easy.Tpo .deps/easy.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT security.lo -MD -MP -MF .deps/security.Tpo -c -o security.lo /opt/build-couchdb/dependencies/curl/lib/security.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT security.lo -MD -MP -MF .deps/security.Tpo -c /opt/build-couchdb/dependencies/curl/lib/security.c  -fPIC -DPIC -o .libs/security.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT security.lo -MD -MP -MF .deps/security.Tpo -c /opt/build-couchdb/dependencies/curl/lib/security.c  -fPIC -DPIC -o security.o >/dev/null 2>&1
STDOUT mv -f .deps/security.Tpo .deps/security.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT krb4.lo -MD -MP -MF .deps/krb4.Tpo -c -o krb4.lo /opt/build-couchdb/dependencies/curl/lib/krb4.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT krb4.lo -MD -MP -MF .deps/krb4.Tpo -c /opt/build-couchdb/dependencies/curl/lib/krb4.c  -fPIC -DPIC -o .libs/krb4.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT krb4.lo -MD -MP -MF .deps/krb4.Tpo -c /opt/build-couchdb/dependencies/curl/lib/krb4.c  -fPIC -DPIC -o krb4.o >/dev/null 2>&1
STDOUT mv -f .deps/krb4.Tpo .deps/krb4.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_fnmatch.lo -MD -MP -MF .deps/curl_fnmatch.Tpo -c -o curl_fnmatch.lo /opt/build-couchdb/dependencies/curl/lib/curl_fnmatch.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_fnmatch.lo -MD -MP -MF .deps/curl_fnmatch.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_fnmatch.c  -fPIC -DPIC -o .libs/curl_fnmatch.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_fnmatch.lo -MD -MP -MF .deps/curl_fnmatch.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_fnmatch.c  -fPIC -DPIC -o curl_fnmatch.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_fnmatch.Tpo .deps/curl_fnmatch.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT fileinfo.lo -MD -MP -MF .deps/fileinfo.Tpo -c -o fileinfo.lo /opt/build-couchdb/dependencies/curl/lib/fileinfo.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT fileinfo.lo -MD -MP -MF .deps/fileinfo.Tpo -c /opt/build-couchdb/dependencies/curl/lib/fileinfo.c  -fPIC -DPIC -o .libs/fileinfo.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT fileinfo.lo -MD -MP -MF .deps/fileinfo.Tpo -c /opt/build-couchdb/dependencies/curl/lib/fileinfo.c  -fPIC -DPIC -o fileinfo.o >/dev/null 2>&1
STDOUT mv -f .deps/fileinfo.Tpo .deps/fileinfo.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT ftplistparser.lo -MD -MP -MF .deps/ftplistparser.Tpo -c -o ftplistparser.lo /opt/build-couchdb/dependencies/curl/lib/ftplistparser.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ftplistparser.lo -MD -MP -MF .deps/ftplistparser.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ftplistparser.c  -fPIC -DPIC -o .libs/ftplistparser.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ftplistparser.lo -MD -MP -MF .deps/ftplistparser.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ftplistparser.c  -fPIC -DPIC -o ftplistparser.o >/dev/null 2>&1
STDOUT mv -f .deps/ftplistparser.Tpo .deps/ftplistparser.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT wildcard.lo -MD -MP -MF .deps/wildcard.Tpo -c -o wildcard.lo /opt/build-couchdb/dependencies/curl/lib/wildcard.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT wildcard.lo -MD -MP -MF .deps/wildcard.Tpo -c /opt/build-couchdb/dependencies/curl/lib/wildcard.c  -fPIC -DPIC -o .libs/wildcard.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT wildcard.lo -MD -MP -MF .deps/wildcard.Tpo -c /opt/build-couchdb/dependencies/curl/lib/wildcard.c  -fPIC -DPIC -o wildcard.o >/dev/null 2>&1
STDOUT mv -f .deps/wildcard.Tpo .deps/wildcard.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT krb5.lo -MD -MP -MF .deps/krb5.Tpo -c -o krb5.lo /opt/build-couchdb/dependencies/curl/lib/krb5.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT krb5.lo -MD -MP -MF .deps/krb5.Tpo -c /opt/build-couchdb/dependencies/curl/lib/krb5.c  -fPIC -DPIC -o .libs/krb5.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT krb5.lo -MD -MP -MF .deps/krb5.Tpo -c /opt/build-couchdb/dependencies/curl/lib/krb5.c  -fPIC -DPIC -o krb5.o >/dev/null 2>&1
STDOUT mv -f .deps/krb5.Tpo .deps/krb5.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT memdebug.lo -MD -MP -MF .deps/memdebug.Tpo -c -o memdebug.lo /opt/build-couchdb/dependencies/curl/lib/memdebug.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT memdebug.lo -MD -MP -MF .deps/memdebug.Tpo -c /opt/build-couchdb/dependencies/curl/lib/memdebug.c  -fPIC -DPIC -o .libs/memdebug.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT memdebug.lo -MD -MP -MF .deps/memdebug.Tpo -c /opt/build-couchdb/dependencies/curl/lib/memdebug.c  -fPIC -DPIC -o memdebug.o >/dev/null 2>&1
STDOUT mv -f .deps/memdebug.Tpo .deps/memdebug.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT http_chunks.lo -MD -MP -MF .deps/http_chunks.Tpo -c -o http_chunks.lo /opt/build-couchdb/dependencies/curl/lib/http_chunks.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_chunks.lo -MD -MP -MF .deps/http_chunks.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_chunks.c  -fPIC -DPIC -o .libs/http_chunks.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_chunks.lo -MD -MP -MF .deps/http_chunks.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_chunks.c  -fPIC -DPIC -o http_chunks.o >/dev/null 2>&1
STDOUT mv -f .deps/http_chunks.Tpo .deps/http_chunks.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT strtok.lo -MD -MP -MF .deps/strtok.Tpo -c -o strtok.lo /opt/build-couchdb/dependencies/curl/lib/strtok.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strtok.lo -MD -MP -MF .deps/strtok.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strtok.c  -fPIC -DPIC -o .libs/strtok.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strtok.lo -MD -MP -MF .deps/strtok.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strtok.c  -fPIC -DPIC -o strtok.o >/dev/null 2>&1
STDOUT mv -f .deps/strtok.Tpo .deps/strtok.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT connect.lo -MD -MP -MF .deps/connect.Tpo -c -o connect.lo /opt/build-couchdb/dependencies/curl/lib/connect.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT connect.lo -MD -MP -MF .deps/connect.Tpo -c /opt/build-couchdb/dependencies/curl/lib/connect.c  -fPIC -DPIC -o .libs/connect.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT connect.lo -MD -MP -MF .deps/connect.Tpo -c /opt/build-couchdb/dependencies/curl/lib/connect.c  -fPIC -DPIC -o connect.o >/dev/null 2>&1
STDOUT mv -f .deps/connect.Tpo .deps/connect.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT llist.lo -MD -MP -MF .deps/llist.Tpo -c -o llist.lo /opt/build-couchdb/dependencies/curl/lib/llist.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT llist.lo -MD -MP -MF .deps/llist.Tpo -c /opt/build-couchdb/dependencies/curl/lib/llist.c  -fPIC -DPIC -o .libs/llist.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT llist.lo -MD -MP -MF .deps/llist.Tpo -c /opt/build-couchdb/dependencies/curl/lib/llist.c  -fPIC -DPIC -o llist.o >/dev/null 2>&1
STDOUT mv -f .deps/llist.Tpo .deps/llist.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hash.lo -MD -MP -MF .deps/hash.Tpo -c -o hash.lo /opt/build-couchdb/dependencies/curl/lib/hash.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hash.lo -MD -MP -MF .deps/hash.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hash.c  -fPIC -DPIC -o .libs/hash.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hash.lo -MD -MP -MF .deps/hash.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hash.c  -fPIC -DPIC -o hash.o >/dev/null 2>&1
STDOUT mv -f .deps/hash.Tpo .deps/hash.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT multi.lo -MD -MP -MF .deps/multi.Tpo -c -o multi.lo /opt/build-couchdb/dependencies/curl/lib/multi.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT multi.lo -MD -MP -MF .deps/multi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/multi.c  -fPIC -DPIC -o .libs/multi.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT multi.lo -MD -MP -MF .deps/multi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/multi.c  -fPIC -DPIC -o multi.o >/dev/null 2>&1
STDOUT mv -f .deps/multi.Tpo .deps/multi.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT content_encoding.lo -MD -MP -MF .deps/content_encoding.Tpo -c -o content_encoding.lo /opt/build-couchdb/dependencies/curl/lib/content_encoding.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT content_encoding.lo -MD -MP -MF .deps/content_encoding.Tpo -c /opt/build-couchdb/dependencies/curl/lib/content_encoding.c  -fPIC -DPIC -o .libs/content_encoding.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT content_encoding.lo -MD -MP -MF .deps/content_encoding.Tpo -c /opt/build-couchdb/dependencies/curl/lib/content_encoding.c  -fPIC -DPIC -o content_encoding.o >/dev/null 2>&1
STDOUT mv -f .deps/content_encoding.Tpo .deps/content_encoding.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT share.lo -MD -MP -MF .deps/share.Tpo -c -o share.lo /opt/build-couchdb/dependencies/curl/lib/share.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT share.lo -MD -MP -MF .deps/share.Tpo -c /opt/build-couchdb/dependencies/curl/lib/share.c  -fPIC -DPIC -o .libs/share.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT share.lo -MD -MP -MF .deps/share.Tpo -c /opt/build-couchdb/dependencies/curl/lib/share.c  -fPIC -DPIC -o share.o >/dev/null 2>&1
STDOUT mv -f .deps/share.Tpo .deps/share.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT http_digest.lo -MD -MP -MF .deps/http_digest.Tpo -c -o http_digest.lo /opt/build-couchdb/dependencies/curl/lib/http_digest.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_digest.lo -MD -MP -MF .deps/http_digest.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_digest.c  -fPIC -DPIC -o .libs/http_digest.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_digest.lo -MD -MP -MF .deps/http_digest.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_digest.c  -fPIC -DPIC -o http_digest.o >/dev/null 2>&1
STDOUT mv -f .deps/http_digest.Tpo .deps/http_digest.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT md4.lo -MD -MP -MF .deps/md4.Tpo -c -o md4.lo /opt/build-couchdb/dependencies/curl/lib/md4.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT md4.lo -MD -MP -MF .deps/md4.Tpo -c /opt/build-couchdb/dependencies/curl/lib/md4.c  -fPIC -DPIC -o .libs/md4.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT md4.lo -MD -MP -MF .deps/md4.Tpo -c /opt/build-couchdb/dependencies/curl/lib/md4.c  -fPIC -DPIC -o md4.o >/dev/null 2>&1
STDOUT mv -f .deps/md4.Tpo .deps/md4.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT md5.lo -MD -MP -MF .deps/md5.Tpo -c -o md5.lo /opt/build-couchdb/dependencies/curl/lib/md5.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT md5.lo -MD -MP -MF .deps/md5.Tpo -c /opt/build-couchdb/dependencies/curl/lib/md5.c  -fPIC -DPIC -o .libs/md5.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT md5.lo -MD -MP -MF .deps/md5.Tpo -c /opt/build-couchdb/dependencies/curl/lib/md5.c  -fPIC -DPIC -o md5.o >/dev/null 2>&1
STDOUT mv -f .deps/md5.Tpo .deps/md5.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_rand.lo -MD -MP -MF .deps/curl_rand.Tpo -c -o curl_rand.lo /opt/build-couchdb/dependencies/curl/lib/curl_rand.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_rand.lo -MD -MP -MF .deps/curl_rand.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_rand.c  -fPIC -DPIC -o .libs/curl_rand.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_rand.lo -MD -MP -MF .deps/curl_rand.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_rand.c  -fPIC -DPIC -o curl_rand.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_rand.Tpo .deps/curl_rand.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT http_negotiate.lo -MD -MP -MF .deps/http_negotiate.Tpo -c -o http_negotiate.lo /opt/build-couchdb/dependencies/curl/lib/http_negotiate.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_negotiate.lo -MD -MP -MF .deps/http_negotiate.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_negotiate.c  -fPIC -DPIC -o .libs/http_negotiate.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_negotiate.lo -MD -MP -MF .deps/http_negotiate.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_negotiate.c  -fPIC -DPIC -o http_negotiate.o >/dev/null 2>&1
STDOUT mv -f .deps/http_negotiate.Tpo .deps/http_negotiate.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT inet_pton.lo -MD -MP -MF .deps/inet_pton.Tpo -c -o inet_pton.lo /opt/build-couchdb/dependencies/curl/lib/inet_pton.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT inet_pton.lo -MD -MP -MF .deps/inet_pton.Tpo -c /opt/build-couchdb/dependencies/curl/lib/inet_pton.c  -fPIC -DPIC -o .libs/inet_pton.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT inet_pton.lo -MD -MP -MF .deps/inet_pton.Tpo -c /opt/build-couchdb/dependencies/curl/lib/inet_pton.c  -fPIC -DPIC -o inet_pton.o >/dev/null 2>&1
STDOUT mv -f .deps/inet_pton.Tpo .deps/inet_pton.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT strtoofft.lo -MD -MP -MF .deps/strtoofft.Tpo -c -o strtoofft.lo /opt/build-couchdb/dependencies/curl/lib/strtoofft.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strtoofft.lo -MD -MP -MF .deps/strtoofft.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strtoofft.c  -fPIC -DPIC -o .libs/strtoofft.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strtoofft.lo -MD -MP -MF .deps/strtoofft.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strtoofft.c  -fPIC -DPIC -o strtoofft.o >/dev/null 2>&1
STDOUT mv -f .deps/strtoofft.Tpo .deps/strtoofft.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT strerror.lo -MD -MP -MF .deps/strerror.Tpo -c -o strerror.lo /opt/build-couchdb/dependencies/curl/lib/strerror.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strerror.lo -MD -MP -MF .deps/strerror.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strerror.c  -fPIC -DPIC -o .libs/strerror.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strerror.lo -MD -MP -MF .deps/strerror.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strerror.c  -fPIC -DPIC -o strerror.o >/dev/null 2>&1
STDOUT mv -f .deps/strerror.Tpo .deps/strerror.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hostasyn.lo -MD -MP -MF .deps/hostasyn.Tpo -c -o hostasyn.lo /opt/build-couchdb/dependencies/curl/lib/hostasyn.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostasyn.lo -MD -MP -MF .deps/hostasyn.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostasyn.c  -fPIC -DPIC -o .libs/hostasyn.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostasyn.lo -MD -MP -MF .deps/hostasyn.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostasyn.c  -fPIC -DPIC -o hostasyn.o >/dev/null 2>&1
STDOUT mv -f .deps/hostasyn.Tpo .deps/hostasyn.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hostip4.lo -MD -MP -MF .deps/hostip4.Tpo -c -o hostip4.lo /opt/build-couchdb/dependencies/curl/lib/hostip4.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostip4.lo -MD -MP -MF .deps/hostip4.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostip4.c  -fPIC -DPIC -o .libs/hostip4.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostip4.lo -MD -MP -MF .deps/hostip4.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostip4.c  -fPIC -DPIC -o hostip4.o >/dev/null 2>&1
STDOUT mv -f .deps/hostip4.Tpo .deps/hostip4.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hostip6.lo -MD -MP -MF .deps/hostip6.Tpo -c -o hostip6.lo /opt/build-couchdb/dependencies/curl/lib/hostip6.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostip6.lo -MD -MP -MF .deps/hostip6.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostip6.c  -fPIC -DPIC -o .libs/hostip6.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostip6.lo -MD -MP -MF .deps/hostip6.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostip6.c  -fPIC -DPIC -o hostip6.o >/dev/null 2>&1
STDOUT mv -f .deps/hostip6.Tpo .deps/hostip6.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hostsyn.lo -MD -MP -MF .deps/hostsyn.Tpo -c -o hostsyn.lo /opt/build-couchdb/dependencies/curl/lib/hostsyn.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostsyn.lo -MD -MP -MF .deps/hostsyn.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostsyn.c  -fPIC -DPIC -o .libs/hostsyn.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hostsyn.lo -MD -MP -MF .deps/hostsyn.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hostsyn.c  -fPIC -DPIC -o hostsyn.o >/dev/null 2>&1
STDOUT mv -f .deps/hostsyn.Tpo .deps/hostsyn.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT inet_ntop.lo -MD -MP -MF .deps/inet_ntop.Tpo -c -o inet_ntop.lo /opt/build-couchdb/dependencies/curl/lib/inet_ntop.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT inet_ntop.lo -MD -MP -MF .deps/inet_ntop.Tpo -c /opt/build-couchdb/dependencies/curl/lib/inet_ntop.c  -fPIC -DPIC -o .libs/inet_ntop.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT inet_ntop.lo -MD -MP -MF .deps/inet_ntop.Tpo -c /opt/build-couchdb/dependencies/curl/lib/inet_ntop.c  -fPIC -DPIC -o inet_ntop.o >/dev/null 2>&1
STDOUT mv -f .deps/inet_ntop.Tpo .deps/inet_ntop.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT parsedate.lo -MD -MP -MF .deps/parsedate.Tpo -c -o parsedate.lo /opt/build-couchdb/dependencies/curl/lib/parsedate.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT parsedate.lo -MD -MP -MF .deps/parsedate.Tpo -c /opt/build-couchdb/dependencies/curl/lib/parsedate.c  -fPIC -DPIC -o .libs/parsedate.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT parsedate.lo -MD -MP -MF .deps/parsedate.Tpo -c /opt/build-couchdb/dependencies/curl/lib/parsedate.c  -fPIC -DPIC -o parsedate.o >/dev/null 2>&1
STDOUT mv -f .deps/parsedate.Tpo .deps/parsedate.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT select.lo -MD -MP -MF .deps/select.Tpo -c -o select.lo /opt/build-couchdb/dependencies/curl/lib/select.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT select.lo -MD -MP -MF .deps/select.Tpo -c /opt/build-couchdb/dependencies/curl/lib/select.c  -fPIC -DPIC -o .libs/select.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT select.lo -MD -MP -MF .deps/select.Tpo -c /opt/build-couchdb/dependencies/curl/lib/select.c  -fPIC -DPIC -o select.o >/dev/null 2>&1
STDOUT mv -f .deps/select.Tpo .deps/select.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT gtls.lo -MD -MP -MF .deps/gtls.Tpo -c -o gtls.lo /opt/build-couchdb/dependencies/curl/lib/gtls.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT gtls.lo -MD -MP -MF .deps/gtls.Tpo -c /opt/build-couchdb/dependencies/curl/lib/gtls.c  -fPIC -DPIC -o .libs/gtls.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT gtls.lo -MD -MP -MF .deps/gtls.Tpo -c /opt/build-couchdb/dependencies/curl/lib/gtls.c  -fPIC -DPIC -o gtls.o >/dev/null 2>&1
STDOUT mv -f .deps/gtls.Tpo .deps/gtls.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT sslgen.lo -MD -MP -MF .deps/sslgen.Tpo -c -o sslgen.lo /opt/build-couchdb/dependencies/curl/lib/sslgen.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT sslgen.lo -MD -MP -MF .deps/sslgen.Tpo -c /opt/build-couchdb/dependencies/curl/lib/sslgen.c  -fPIC -DPIC -o .libs/sslgen.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT sslgen.lo -MD -MP -MF .deps/sslgen.Tpo -c /opt/build-couchdb/dependencies/curl/lib/sslgen.c  -fPIC -DPIC -o sslgen.o >/dev/null 2>&1
STDOUT mv -f .deps/sslgen.Tpo .deps/sslgen.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT tftp.lo -MD -MP -MF .deps/tftp.Tpo -c -o tftp.lo /opt/build-couchdb/dependencies/curl/lib/tftp.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT tftp.lo -MD -MP -MF .deps/tftp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/tftp.c  -fPIC -DPIC -o .libs/tftp.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT tftp.lo -MD -MP -MF .deps/tftp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/tftp.c  -fPIC -DPIC -o tftp.o >/dev/null 2>&1
STDOUT mv -f .deps/tftp.Tpo .deps/tftp.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT splay.lo -MD -MP -MF .deps/splay.Tpo -c -o splay.lo /opt/build-couchdb/dependencies/curl/lib/splay.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT splay.lo -MD -MP -MF .deps/splay.Tpo -c /opt/build-couchdb/dependencies/curl/lib/splay.c  -fPIC -DPIC -o .libs/splay.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT splay.lo -MD -MP -MF .deps/splay.Tpo -c /opt/build-couchdb/dependencies/curl/lib/splay.c  -fPIC -DPIC -o splay.o >/dev/null 2>&1
STDOUT mv -f .deps/splay.Tpo .deps/splay.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT strdup.lo -MD -MP -MF .deps/strdup.Tpo -c -o strdup.lo /opt/build-couchdb/dependencies/curl/lib/strdup.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strdup.lo -MD -MP -MF .deps/strdup.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strdup.c  -fPIC -DPIC -o .libs/strdup.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT strdup.lo -MD -MP -MF .deps/strdup.Tpo -c /opt/build-couchdb/dependencies/curl/lib/strdup.c  -fPIC -DPIC -o strdup.o >/dev/null 2>&1
STDOUT mv -f .deps/strdup.Tpo .deps/strdup.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT socks.lo -MD -MP -MF .deps/socks.Tpo -c -o socks.lo /opt/build-couchdb/dependencies/curl/lib/socks.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT socks.lo -MD -MP -MF .deps/socks.Tpo -c /opt/build-couchdb/dependencies/curl/lib/socks.c  -fPIC -DPIC -o .libs/socks.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT socks.lo -MD -MP -MF .deps/socks.Tpo -c /opt/build-couchdb/dependencies/curl/lib/socks.c  -fPIC -DPIC -o socks.o >/dev/null 2>&1
STDOUT mv -f .deps/socks.Tpo .deps/socks.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT ssh.lo -MD -MP -MF .deps/ssh.Tpo -c -o ssh.lo /opt/build-couchdb/dependencies/curl/lib/ssh.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ssh.lo -MD -MP -MF .deps/ssh.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ssh.c  -fPIC -DPIC -o .libs/ssh.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT ssh.lo -MD -MP -MF .deps/ssh.Tpo -c /opt/build-couchdb/dependencies/curl/lib/ssh.c  -fPIC -DPIC -o ssh.o >/dev/null 2>&1
STDOUT mv -f .deps/ssh.Tpo .deps/ssh.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT nss.lo -MD -MP -MF .deps/nss.Tpo -c -o nss.lo /opt/build-couchdb/dependencies/curl/lib/nss.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT nss.lo -MD -MP -MF .deps/nss.Tpo -c /opt/build-couchdb/dependencies/curl/lib/nss.c  -fPIC -DPIC -o .libs/nss.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT nss.lo -MD -MP -MF .deps/nss.Tpo -c /opt/build-couchdb/dependencies/curl/lib/nss.c  -fPIC -DPIC -o nss.o >/dev/null 2>&1
STDOUT mv -f .deps/nss.Tpo .deps/nss.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT qssl.lo -MD -MP -MF .deps/qssl.Tpo -c -o qssl.lo /opt/build-couchdb/dependencies/curl/lib/qssl.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT qssl.lo -MD -MP -MF .deps/qssl.Tpo -c /opt/build-couchdb/dependencies/curl/lib/qssl.c  -fPIC -DPIC -o .libs/qssl.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT qssl.lo -MD -MP -MF .deps/qssl.Tpo -c /opt/build-couchdb/dependencies/curl/lib/qssl.c  -fPIC -DPIC -o qssl.o >/dev/null 2>&1
STDOUT mv -f .deps/qssl.Tpo .deps/qssl.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT rawstr.lo -MD -MP -MF .deps/rawstr.Tpo -c -o rawstr.lo /opt/build-couchdb/dependencies/curl/lib/rawstr.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT rawstr.lo -MD -MP -MF .deps/rawstr.Tpo -c /opt/build-couchdb/dependencies/curl/lib/rawstr.c  -fPIC -DPIC -o .libs/rawstr.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT rawstr.lo -MD -MP -MF .deps/rawstr.Tpo -c /opt/build-couchdb/dependencies/curl/lib/rawstr.c  -fPIC -DPIC -o rawstr.o >/dev/null 2>&1
STDOUT mv -f .deps/rawstr.Tpo .deps/rawstr.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_addrinfo.lo -MD -MP -MF .deps/curl_addrinfo.Tpo -c -o curl_addrinfo.lo /opt/build-couchdb/dependencies/curl/lib/curl_addrinfo.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_addrinfo.lo -MD -MP -MF .deps/curl_addrinfo.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_addrinfo.c  -fPIC -DPIC -o .libs/curl_addrinfo.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_addrinfo.lo -MD -MP -MF .deps/curl_addrinfo.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_addrinfo.c  -fPIC -DPIC -o curl_addrinfo.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_addrinfo.Tpo .deps/curl_addrinfo.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT socks_gssapi.lo -MD -MP -MF .deps/socks_gssapi.Tpo -c -o socks_gssapi.lo /opt/build-couchdb/dependencies/curl/lib/socks_gssapi.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT socks_gssapi.lo -MD -MP -MF .deps/socks_gssapi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/socks_gssapi.c  -fPIC -DPIC -o .libs/socks_gssapi.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT socks_gssapi.lo -MD -MP -MF .deps/socks_gssapi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/socks_gssapi.c  -fPIC -DPIC -o socks_gssapi.o >/dev/null 2>&1
STDOUT mv -f .deps/socks_gssapi.Tpo .deps/socks_gssapi.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT socks_sspi.lo -MD -MP -MF .deps/socks_sspi.Tpo -c -o socks_sspi.lo /opt/build-couchdb/dependencies/curl/lib/socks_sspi.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT socks_sspi.lo -MD -MP -MF .deps/socks_sspi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/socks_sspi.c  -fPIC -DPIC -o .libs/socks_sspi.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT socks_sspi.lo -MD -MP -MF .deps/socks_sspi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/socks_sspi.c  -fPIC -DPIC -o socks_sspi.o >/dev/null 2>&1
STDOUT mv -f .deps/socks_sspi.Tpo .deps/socks_sspi.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_sspi.lo -MD -MP -MF .deps/curl_sspi.Tpo -c -o curl_sspi.lo /opt/build-couchdb/dependencies/curl/lib/curl_sspi.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_sspi.lo -MD -MP -MF .deps/curl_sspi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_sspi.c  -fPIC -DPIC -o .libs/curl_sspi.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_sspi.lo -MD -MP -MF .deps/curl_sspi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_sspi.c  -fPIC -DPIC -o curl_sspi.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_sspi.Tpo .deps/curl_sspi.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT slist.lo -MD -MP -MF .deps/slist.Tpo -c -o slist.lo /opt/build-couchdb/dependencies/curl/lib/slist.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT slist.lo -MD -MP -MF .deps/slist.Tpo -c /opt/build-couchdb/dependencies/curl/lib/slist.c  -fPIC -DPIC -o .libs/slist.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT slist.lo -MD -MP -MF .deps/slist.Tpo -c /opt/build-couchdb/dependencies/curl/lib/slist.c  -fPIC -DPIC -o slist.o >/dev/null 2>&1
STDOUT mv -f .deps/slist.Tpo .deps/slist.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT nonblock.lo -MD -MP -MF .deps/nonblock.Tpo -c -o nonblock.lo /opt/build-couchdb/dependencies/curl/lib/nonblock.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT nonblock.lo -MD -MP -MF .deps/nonblock.Tpo -c /opt/build-couchdb/dependencies/curl/lib/nonblock.c  -fPIC -DPIC -o .libs/nonblock.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT nonblock.lo -MD -MP -MF .deps/nonblock.Tpo -c /opt/build-couchdb/dependencies/curl/lib/nonblock.c  -fPIC -DPIC -o nonblock.o >/dev/null 2>&1
STDOUT mv -f .deps/nonblock.Tpo .deps/nonblock.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_memrchr.lo -MD -MP -MF .deps/curl_memrchr.Tpo -c -o curl_memrchr.lo /opt/build-couchdb/dependencies/curl/lib/curl_memrchr.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_memrchr.lo -MD -MP -MF .deps/curl_memrchr.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_memrchr.c  -fPIC -DPIC -o .libs/curl_memrchr.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_memrchr.lo -MD -MP -MF .deps/curl_memrchr.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_memrchr.c  -fPIC -DPIC -o curl_memrchr.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_memrchr.Tpo .deps/curl_memrchr.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT imap.lo -MD -MP -MF .deps/imap.Tpo -c -o imap.lo /opt/build-couchdb/dependencies/curl/lib/imap.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT imap.lo -MD -MP -MF .deps/imap.Tpo -c /opt/build-couchdb/dependencies/curl/lib/imap.c  -fPIC -DPIC -o .libs/imap.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT imap.lo -MD -MP -MF .deps/imap.Tpo -c /opt/build-couchdb/dependencies/curl/lib/imap.c  -fPIC -DPIC -o imap.o >/dev/null 2>&1
STDOUT mv -f .deps/imap.Tpo .deps/imap.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT pop3.lo -MD -MP -MF .deps/pop3.Tpo -c -o pop3.lo /opt/build-couchdb/dependencies/curl/lib/pop3.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT pop3.lo -MD -MP -MF .deps/pop3.Tpo -c /opt/build-couchdb/dependencies/curl/lib/pop3.c  -fPIC -DPIC -o .libs/pop3.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT pop3.lo -MD -MP -MF .deps/pop3.Tpo -c /opt/build-couchdb/dependencies/curl/lib/pop3.c  -fPIC -DPIC -o pop3.o >/dev/null 2>&1
STDOUT mv -f .deps/pop3.Tpo .deps/pop3.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT smtp.lo -MD -MP -MF .deps/smtp.Tpo -c -o smtp.lo /opt/build-couchdb/dependencies/curl/lib/smtp.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT smtp.lo -MD -MP -MF .deps/smtp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/smtp.c  -fPIC -DPIC -o .libs/smtp.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT smtp.lo -MD -MP -MF .deps/smtp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/smtp.c  -fPIC -DPIC -o smtp.o >/dev/null 2>&1
STDOUT mv -f .deps/smtp.Tpo .deps/smtp.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT pingpong.lo -MD -MP -MF .deps/pingpong.Tpo -c -o pingpong.lo /opt/build-couchdb/dependencies/curl/lib/pingpong.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT pingpong.lo -MD -MP -MF .deps/pingpong.Tpo -c /opt/build-couchdb/dependencies/curl/lib/pingpong.c  -fPIC -DPIC -o .libs/pingpong.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT pingpong.lo -MD -MP -MF .deps/pingpong.Tpo -c /opt/build-couchdb/dependencies/curl/lib/pingpong.c  -fPIC -DPIC -o pingpong.o >/dev/null 2>&1
STDOUT mv -f .deps/pingpong.Tpo .deps/pingpong.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT rtsp.lo -MD -MP -MF .deps/rtsp.Tpo -c -o rtsp.lo /opt/build-couchdb/dependencies/curl/lib/rtsp.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT rtsp.lo -MD -MP -MF .deps/rtsp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/rtsp.c  -fPIC -DPIC -o .libs/rtsp.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT rtsp.lo -MD -MP -MF .deps/rtsp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/rtsp.c  -fPIC -DPIC -o rtsp.o >/dev/null 2>&1
STDOUT mv -f .deps/rtsp.Tpo .deps/rtsp.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_threads.lo -MD -MP -MF .deps/curl_threads.Tpo -c -o curl_threads.lo /opt/build-couchdb/dependencies/curl/lib/curl_threads.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_threads.lo -MD -MP -MF .deps/curl_threads.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_threads.c  -fPIC -DPIC -o .libs/curl_threads.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_threads.lo -MD -MP -MF .deps/curl_threads.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_threads.c  -fPIC -DPIC -o curl_threads.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_threads.Tpo .deps/curl_threads.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT warnless.lo -MD -MP -MF .deps/warnless.Tpo -c -o warnless.lo /opt/build-couchdb/dependencies/curl/lib/warnless.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT warnless.lo -MD -MP -MF .deps/warnless.Tpo -c /opt/build-couchdb/dependencies/curl/lib/warnless.c  -fPIC -DPIC -o .libs/warnless.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT warnless.lo -MD -MP -MF .deps/warnless.Tpo -c /opt/build-couchdb/dependencies/curl/lib/warnless.c  -fPIC -DPIC -o warnless.o >/dev/null 2>&1
STDOUT mv -f .deps/warnless.Tpo .deps/warnless.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hmac.lo -MD -MP -MF .deps/hmac.Tpo -c -o hmac.lo /opt/build-couchdb/dependencies/curl/lib/hmac.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hmac.lo -MD -MP -MF .deps/hmac.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hmac.c  -fPIC -DPIC -o .libs/hmac.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT hmac.lo -MD -MP -MF .deps/hmac.Tpo -c /opt/build-couchdb/dependencies/curl/lib/hmac.c  -fPIC -DPIC -o hmac.o >/dev/null 2>&1
STDOUT mv -f .deps/hmac.Tpo .deps/hmac.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT polarssl.lo -MD -MP -MF .deps/polarssl.Tpo -c -o polarssl.lo /opt/build-couchdb/dependencies/curl/lib/polarssl.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT polarssl.lo -MD -MP -MF .deps/polarssl.Tpo -c /opt/build-couchdb/dependencies/curl/lib/polarssl.c  -fPIC -DPIC -o .libs/polarssl.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT polarssl.lo -MD -MP -MF .deps/polarssl.Tpo -c /opt/build-couchdb/dependencies/curl/lib/polarssl.c  -fPIC -DPIC -o polarssl.o >/dev/null 2>&1
STDOUT mv -f .deps/polarssl.Tpo .deps/polarssl.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_rtmp.lo -MD -MP -MF .deps/curl_rtmp.Tpo -c -o curl_rtmp.lo /opt/build-couchdb/dependencies/curl/lib/curl_rtmp.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_rtmp.lo -MD -MP -MF .deps/curl_rtmp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_rtmp.c  -fPIC -DPIC -o .libs/curl_rtmp.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_rtmp.lo -MD -MP -MF .deps/curl_rtmp.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_rtmp.c  -fPIC -DPIC -o curl_rtmp.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_rtmp.Tpo .deps/curl_rtmp.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT openldap.lo -MD -MP -MF .deps/openldap.Tpo -c -o openldap.lo /opt/build-couchdb/dependencies/curl/lib/openldap.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT openldap.lo -MD -MP -MF .deps/openldap.Tpo -c /opt/build-couchdb/dependencies/curl/lib/openldap.c  -fPIC -DPIC -o .libs/openldap.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT openldap.lo -MD -MP -MF .deps/openldap.Tpo -c /opt/build-couchdb/dependencies/curl/lib/openldap.c  -fPIC -DPIC -o openldap.o >/dev/null 2>&1
STDOUT mv -f .deps/openldap.Tpo .deps/openldap.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_gethostname.lo -MD -MP -MF .deps/curl_gethostname.Tpo -c -o curl_gethostname.lo /opt/build-couchdb/dependencies/curl/lib/curl_gethostname.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_gethostname.lo -MD -MP -MF .deps/curl_gethostname.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_gethostname.c  -fPIC -DPIC -o .libs/curl_gethostname.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_gethostname.lo -MD -MP -MF .deps/curl_gethostname.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_gethostname.c  -fPIC -DPIC -o curl_gethostname.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_gethostname.Tpo .deps/curl_gethostname.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT gopher.lo -MD -MP -MF .deps/gopher.Tpo -c -o gopher.lo /opt/build-couchdb/dependencies/curl/lib/gopher.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT gopher.lo -MD -MP -MF .deps/gopher.Tpo -c /opt/build-couchdb/dependencies/curl/lib/gopher.c  -fPIC -DPIC -o .libs/gopher.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT gopher.lo -MD -MP -MF .deps/gopher.Tpo -c /opt/build-couchdb/dependencies/curl/lib/gopher.c  -fPIC -DPIC -o gopher.o >/dev/null 2>&1
STDOUT mv -f .deps/gopher.Tpo .deps/gopher.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT axtls.lo -MD -MP -MF .deps/axtls.Tpo -c -o axtls.lo /opt/build-couchdb/dependencies/curl/lib/axtls.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT axtls.lo -MD -MP -MF .deps/axtls.Tpo -c /opt/build-couchdb/dependencies/curl/lib/axtls.c  -fPIC -DPIC -o .libs/axtls.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT axtls.lo -MD -MP -MF .deps/axtls.Tpo -c /opt/build-couchdb/dependencies/curl/lib/axtls.c  -fPIC -DPIC -o axtls.o >/dev/null 2>&1
STDOUT mv -f .deps/axtls.Tpo .deps/axtls.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT idn_win32.lo -MD -MP -MF .deps/idn_win32.Tpo -c -o idn_win32.lo /opt/build-couchdb/dependencies/curl/lib/idn_win32.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT idn_win32.lo -MD -MP -MF .deps/idn_win32.Tpo -c /opt/build-couchdb/dependencies/curl/lib/idn_win32.c  -fPIC -DPIC -o .libs/idn_win32.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT idn_win32.lo -MD -MP -MF .deps/idn_win32.Tpo -c /opt/build-couchdb/dependencies/curl/lib/idn_win32.c  -fPIC -DPIC -o idn_win32.o >/dev/null 2>&1
STDOUT mv -f .deps/idn_win32.Tpo .deps/idn_win32.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT http_negotiate_sspi.lo -MD -MP -MF .deps/http_negotiate_sspi.Tpo -c -o http_negotiate_sspi.lo /opt/build-couchdb/dependencies/curl/lib/http_negotiate_sspi.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_negotiate_sspi.lo -MD -MP -MF .deps/http_negotiate_sspi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_negotiate_sspi.c  -fPIC -DPIC -o .libs/http_negotiate_sspi.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_negotiate_sspi.lo -MD -MP -MF .deps/http_negotiate_sspi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_negotiate_sspi.c  -fPIC -DPIC -o http_negotiate_sspi.o >/dev/null 2>&1
STDOUT mv -f .deps/http_negotiate_sspi.Tpo .deps/http_negotiate_sspi.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT cyassl.lo -MD -MP -MF .deps/cyassl.Tpo -c -o cyassl.lo /opt/build-couchdb/dependencies/curl/lib/cyassl.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT cyassl.lo -MD -MP -MF .deps/cyassl.Tpo -c /opt/build-couchdb/dependencies/curl/lib/cyassl.c  -fPIC -DPIC -o .libs/cyassl.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT cyassl.lo -MD -MP -MF .deps/cyassl.Tpo -c /opt/build-couchdb/dependencies/curl/lib/cyassl.c  -fPIC -DPIC -o cyassl.o >/dev/null 2>&1
STDOUT mv -f .deps/cyassl.Tpo .deps/cyassl.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT http_proxy.lo -MD -MP -MF .deps/http_proxy.Tpo -c -o http_proxy.lo /opt/build-couchdb/dependencies/curl/lib/http_proxy.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_proxy.lo -MD -MP -MF .deps/http_proxy.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_proxy.c  -fPIC -DPIC -o .libs/http_proxy.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT http_proxy.lo -MD -MP -MF .deps/http_proxy.Tpo -c /opt/build-couchdb/dependencies/curl/lib/http_proxy.c  -fPIC -DPIC -o http_proxy.o >/dev/null 2>&1
STDOUT mv -f .deps/http_proxy.Tpo .deps/http_proxy.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT non-ascii.lo -MD -MP -MF .deps/non-ascii.Tpo -c -o non-ascii.lo /opt/build-couchdb/dependencies/curl/lib/non-ascii.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT non-ascii.lo -MD -MP -MF .deps/non-ascii.Tpo -c /opt/build-couchdb/dependencies/curl/lib/non-ascii.c  -fPIC -DPIC -o .libs/non-ascii.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT non-ascii.lo -MD -MP -MF .deps/non-ascii.Tpo -c /opt/build-couchdb/dependencies/curl/lib/non-ascii.c  -fPIC -DPIC -o non-ascii.o >/dev/null 2>&1
STDOUT mv -f .deps/non-ascii.Tpo .deps/non-ascii.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT asyn-ares.lo -MD -MP -MF .deps/asyn-ares.Tpo -c -o asyn-ares.lo /opt/build-couchdb/dependencies/curl/lib/asyn-ares.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT asyn-ares.lo -MD -MP -MF .deps/asyn-ares.Tpo -c /opt/build-couchdb/dependencies/curl/lib/asyn-ares.c  -fPIC -DPIC -o .libs/asyn-ares.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT asyn-ares.lo -MD -MP -MF .deps/asyn-ares.Tpo -c /opt/build-couchdb/dependencies/curl/lib/asyn-ares.c  -fPIC -DPIC -o asyn-ares.o >/dev/null 2>&1
STDOUT mv -f .deps/asyn-ares.Tpo .deps/asyn-ares.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT asyn-thread.lo -MD -MP -MF .deps/asyn-thread.Tpo -c -o asyn-thread.lo /opt/build-couchdb/dependencies/curl/lib/asyn-thread.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT asyn-thread.lo -MD -MP -MF .deps/asyn-thread.Tpo -c /opt/build-couchdb/dependencies/curl/lib/asyn-thread.c  -fPIC -DPIC -o .libs/asyn-thread.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT asyn-thread.lo -MD -MP -MF .deps/asyn-thread.Tpo -c /opt/build-couchdb/dependencies/curl/lib/asyn-thread.c  -fPIC -DPIC -o asyn-thread.o >/dev/null 2>&1
STDOUT mv -f .deps/asyn-thread.Tpo .deps/asyn-thread.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_gssapi.lo -MD -MP -MF .deps/curl_gssapi.Tpo -c -o curl_gssapi.lo /opt/build-couchdb/dependencies/curl/lib/curl_gssapi.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_gssapi.lo -MD -MP -MF .deps/curl_gssapi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_gssapi.c  -fPIC -DPIC -o .libs/curl_gssapi.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_gssapi.lo -MD -MP -MF .deps/curl_gssapi.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_gssapi.c  -fPIC -DPIC -o curl_gssapi.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_gssapi.Tpo .deps/curl_gssapi.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_ntlm.lo -MD -MP -MF .deps/curl_ntlm.Tpo -c -o curl_ntlm.lo /opt/build-couchdb/dependencies/curl/lib/curl_ntlm.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm.lo -MD -MP -MF .deps/curl_ntlm.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm.c  -fPIC -DPIC -o .libs/curl_ntlm.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm.lo -MD -MP -MF .deps/curl_ntlm.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm.c  -fPIC -DPIC -o curl_ntlm.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_ntlm.Tpo .deps/curl_ntlm.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_ntlm_wb.lo -MD -MP -MF .deps/curl_ntlm_wb.Tpo -c -o curl_ntlm_wb.lo /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_wb.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm_wb.lo -MD -MP -MF .deps/curl_ntlm_wb.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_wb.c  -fPIC -DPIC -o .libs/curl_ntlm_wb.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm_wb.lo -MD -MP -MF .deps/curl_ntlm_wb.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_wb.c  -fPIC -DPIC -o curl_ntlm_wb.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_ntlm_wb.Tpo .deps/curl_ntlm_wb.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_ntlm_core.lo -MD -MP -MF .deps/curl_ntlm_core.Tpo -c -o curl_ntlm_core.lo /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_core.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm_core.lo -MD -MP -MF .deps/curl_ntlm_core.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_core.c  -fPIC -DPIC -o .libs/curl_ntlm_core.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm_core.lo -MD -MP -MF .deps/curl_ntlm_core.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_core.c  -fPIC -DPIC -o curl_ntlm_core.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_ntlm_core.Tpo .deps/curl_ntlm_core.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=compile gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curl_ntlm_msgs.lo -MD -MP -MF .deps/curl_ntlm_msgs.Tpo -c -o curl_ntlm_msgs.lo /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_msgs.c
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm_msgs.lo -MD -MP -MF .deps/curl_ntlm_msgs.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_msgs.c  -fPIC -DPIC -o .libs/curl_ntlm_msgs.o
STDOUT libtool: compile:  gcc -DHAVE_CONFIG_H -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I/opt/build-couchdb/dependencies/curl/lib -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js -g0 -O2 -Wno-system-headers -MT curl_ntlm_msgs.lo -MD -MP -MF .deps/curl_ntlm_msgs.Tpo -c /opt/build-couchdb/dependencies/curl/lib/curl_ntlm_msgs.c  -fPIC -DPIC -o curl_ntlm_msgs.o >/dev/null 2>&1
STDOUT mv -f .deps/curl_ntlm_msgs.Tpo .deps/curl_ntlm_msgs.Plo
STDOUT /bin/bash ../libtool --tag=CC   --mode=link gcc  -g0 -O2 -Wno-system-headers   -version-info 6:0:2  -lssl -lcrypto -lrt -lz -Xlinker -rpath=/opt/build-couchdb/build/lib -L/opt/build-couchdb/build/lib -o libcurl.la -rpath /opt/build-couchdb/build/lib file.lo timeval.lo base64.lo hostip.lo progress.lo formdata.lo cookie.lo http.lo sendf.lo ftp.lo url.lo dict.lo if2ip.lo speedcheck.lo ldap.lo ssluse.lo version.lo getenv.lo escape.lo mprintf.lo telnet.lo netrc.lo getinfo.lo transfer.lo strequal.lo easy.lo security.lo krb4.lo curl_fnmatch.lo fileinfo.lo ftplistparser.lo wildcard.lo krb5.lo memdebug.lo http_chunks.lo strtok.lo connect.lo llist.lo hash.lo multi.lo content_encoding.lo share.lo http_digest.lo md4.lo md5.lo curl_rand.lo http_negotiate.lo inet_pton.lo strtoofft.lo strerror.lo hostasyn.lo hostip4.lo hostip6.lo hostsyn.lo inet_ntop.lo parsedate.lo select.lo gtls.lo sslgen.lo tftp.lo splay.lo strdup.lo socks.lo ssh.lo nss.lo qssl.lo rawstr.lo curl_addrinfo.lo socks_gssapi.lo socks_sspi.lo curl_sspi.lo slist.lo nonblock.lo curl_memrchr.lo imap.lo pop3.lo smtp.lo pingpong.lo rtsp.lo curl_threads.lo warnless.lo hmac.lo polarssl.lo curl_rtmp.lo openldap.lo curl_gethostname.lo gopher.lo axtls.lo idn_win32.lo http_negotiate_sspi.lo cyassl.lo http_proxy.lo non-ascii.lo asyn-ares.lo asyn-thread.lo curl_gssapi.lo curl_ntlm.lo curl_ntlm_wb.lo curl_ntlm_core.lo curl_ntlm_msgs.lo
STDOUT libtool: link: gcc -shared  -fPIC -DPIC  .libs/file.o .libs/timeval.o .libs/base64.o .libs/hostip.o .libs/progress.o .libs/formdata.o .libs/cookie.o .libs/http.o .libs/sendf.o .libs/ftp.o .libs/url.o .libs/dict.o .libs/if2ip.o .libs/speedcheck.o .libs/ldap.o .libs/ssluse.o .libs/version.o .libs/getenv.o .libs/escape.o .libs/mprintf.o .libs/telnet.o .libs/netrc.o .libs/getinfo.o .libs/transfer.o .libs/strequal.o .libs/easy.o .libs/security.o .libs/krb4.o .libs/curl_fnmatch.o .libs/fileinfo.o .libs/ftplistparser.o .libs/wildcard.o .libs/krb5.o .libs/memdebug.o .libs/http_chunks.o .libs/strtok.o .libs/connect.o .libs/llist.o .libs/hash.o .libs/multi.o .libs/content_encoding.o .libs/share.o .libs/http_digest.o .libs/md4.o .libs/md5.o .libs/curl_rand.o .libs/http_negotiate.o .libs/inet_pton.o .libs/strtoofft.o .libs/strerror.o .libs/hostasyn.o .libs/hostip4.o .libs/hostip6.o .libs/hostsyn.o .libs/inet_ntop.o .libs/parsedate.o .libs/select.o .libs/gtls.o .libs/sslgen.o .libs/tftp.o .libs/splay.o .libs/strdup.o .libs/socks.o .libs/ssh.o .libs/nss.o .libs/qssl.o .libs/rawstr.o .libs/curl_addrinfo.o .libs/socks_gssapi.o .libs/socks_sspi.o .libs/curl_sspi.o .libs/slist.o .libs/nonblock.o .libs/curl_memrchr.o .libs/imap.o .libs/pop3.o .libs/smtp.o .libs/pingpong.o .libs/rtsp.o .libs/curl_threads.o .libs/warnless.o .libs/hmac.o .libs/polarssl.o .libs/curl_rtmp.o .libs/openldap.o .libs/curl_gethostname.o .libs/gopher.o .libs/axtls.o .libs/idn_win32.o .libs/http_negotiate_sspi.o .libs/cyassl.o .libs/http_proxy.o .libs/non-ascii.o .libs/asyn-ares.o .libs/asyn-thread.o .libs/curl_gssapi.o .libs/curl_ntlm.o .libs/curl_ntlm_wb.o .libs/curl_ntlm_core.o .libs/curl_ntlm_msgs.o   -lssl -lcrypto -lrt -lz -L/opt/build-couchdb/build/lib  -O2 -Wl,-rpath=/opt/build-couchdb/build/lib   -Wl,-soname -Wl,libcurl.so.4 -o .libs/libcurl.so.4.2.0
STDOUT libtool: link: (cd ".libs" && rm -f "libcurl.so.4" && ln -s "libcurl.so.4.2.0" "libcurl.so.4")
STDOUT libtool: link: (cd ".libs" && rm -f "libcurl.so" && ln -s "libcurl.so.4.2.0" "libcurl.so")
STDOUT libtool: link: /usr/bin/ar cru .libs/libcurl.a  file.o timeval.o base64.o hostip.o progress.o formdata.o cookie.o http.o sendf.o ftp.o url.o dict.o if2ip.o speedcheck.o ldap.o ssluse.o version.o getenv.o escape.o mprintf.o telnet.o netrc.o getinfo.o transfer.o strequal.o easy.o security.o krb4.o curl_fnmatch.o fileinfo.o ftplistparser.o wildcard.o krb5.o memdebug.o http_chunks.o strtok.o connect.o llist.o hash.o multi.o content_encoding.o share.o http_digest.o md4.o md5.o curl_rand.o http_negotiate.o inet_pton.o strtoofft.o strerror.o hostasyn.o hostip4.o hostip6.o hostsyn.o inet_ntop.o parsedate.o select.o gtls.o sslgen.o tftp.o splay.o strdup.o socks.o ssh.o nss.o qssl.o rawstr.o curl_addrinfo.o socks_gssapi.o socks_sspi.o curl_sspi.o slist.o nonblock.o curl_memrchr.o imap.o pop3.o smtp.o pingpong.o rtsp.o curl_threads.o warnless.o hmac.o polarssl.o curl_rtmp.o openldap.o curl_gethostname.o gopher.o axtls.o idn_win32.o http_negotiate_sspi.o cyassl.o http_proxy.o non-ascii.o asyn-ares.o asyn-thread.o curl_gssapi.o curl_ntlm.o curl_ntlm_wb.o curl_ntlm_core.o curl_ntlm_msgs.o
STDOUT libtool: link: ranlib .libs/libcurl.a
STDOUT libtool: link: ( cd ".libs" && rm -f "libcurl.la" && ln -s "../libcurl.la" "libcurl.la" )
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT Making all in src
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT echo "/* built-in manual is disabled, blank function */" > hugehelp.c
STDOUT echo '#include "hugehelp.h"' >> hugehelp.c
STDOUT echo "void hugehelp(void) {}" >>hugehelp.c
STDOUT echo "creating config-win32.h"
STDOUT creating config-win32.h
STDOUT make  all-am
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT main.o -MD -MP -MF .deps/main.Tpo -c -o main.o /opt/build-couchdb/dependencies/curl/src/main.c
STDOUT mv -f .deps/main.Tpo .deps/main.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT hugehelp.o -MD -MP -MF .deps/hugehelp.Tpo -c -o hugehelp.o hugehelp.c
STDOUT mv -f .deps/hugehelp.Tpo .deps/hugehelp.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT urlglob.o -MD -MP -MF .deps/urlglob.Tpo -c -o urlglob.o /opt/build-couchdb/dependencies/curl/src/urlglob.c
STDOUT mv -f .deps/urlglob.Tpo .deps/urlglob.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT writeout.o -MD -MP -MF .deps/writeout.Tpo -c -o writeout.o /opt/build-couchdb/dependencies/curl/src/writeout.c
STDOUT mv -f .deps/writeout.Tpo .deps/writeout.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT writeenv.o -MD -MP -MF .deps/writeenv.Tpo -c -o writeenv.o /opt/build-couchdb/dependencies/curl/src/writeenv.c
STDOUT mv -f .deps/writeenv.Tpo .deps/writeenv.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT getpass.o -MD -MP -MF .deps/getpass.Tpo -c -o getpass.o /opt/build-couchdb/dependencies/curl/src/getpass.c
STDOUT mv -f .deps/getpass.Tpo .deps/getpass.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT homedir.o -MD -MP -MF .deps/homedir.Tpo -c -o homedir.o /opt/build-couchdb/dependencies/curl/src/homedir.c
STDOUT mv -f .deps/homedir.Tpo .deps/homedir.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT curlutil.o -MD -MP -MF .deps/curlutil.Tpo -c -o curlutil.o /opt/build-couchdb/dependencies/curl/src/curlutil.c
STDOUT mv -f .deps/curlutil.Tpo .deps/curlutil.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT os-specific.o -MD -MP -MF .deps/os-specific.Tpo -c -o os-specific.o /opt/build-couchdb/dependencies/curl/src/os-specific.c
STDOUT mv -f .deps/os-specific.Tpo .deps/os-specific.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT xattr.o -MD -MP -MF .deps/xattr.Tpo -c -o xattr.o /opt/build-couchdb/dependencies/curl/src/xattr.c
STDOUT mv -f .deps/xattr.Tpo .deps/xattr.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT strtoofft.o -MD -MP -MF .deps/strtoofft.Tpo -c -o strtoofft.o `test -f '/opt/build-couchdb/dependencies/curl/lib/strtoofft.c' || echo '/opt/build-couchdb/dependencies/curl/src/'`/opt/build-couchdb/dependencies/curl/lib/strtoofft.c
STDOUT mv -f .deps/strtoofft.Tpo .deps/strtoofft.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT strdup.o -MD -MP -MF .deps/strdup.Tpo -c -o strdup.o `test -f '/opt/build-couchdb/dependencies/curl/lib/strdup.c' || echo '/opt/build-couchdb/dependencies/curl/src/'`/opt/build-couchdb/dependencies/curl/lib/strdup.c
STDOUT mv -f .deps/strdup.Tpo .deps/strdup.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT rawstr.o -MD -MP -MF .deps/rawstr.Tpo -c -o rawstr.o `test -f '/opt/build-couchdb/dependencies/curl/lib/rawstr.c' || echo '/opt/build-couchdb/dependencies/curl/src/'`/opt/build-couchdb/dependencies/curl/lib/rawstr.c
STDOUT mv -f .deps/rawstr.Tpo .deps/rawstr.Po
STDOUT gcc -DHAVE_CONFIG_H  -I../include/curl -I../include -I/opt/build-couchdb/dependencies/curl/include -I../lib -I../src -I/opt/build-couchdb/dependencies/curl/lib -I/opt/build-couchdb/dependencies/curl/src  -isystem /opt/build-couchdb/build/include -isystem /opt/build-couchdb/build/include/js  -g0 -O2 -Wno-system-headers  -MT nonblock.o -MD -MP -MF .deps/nonblock.Tpo -c -o nonblock.o `test -f '/opt/build-couchdb/dependencies/curl/lib/nonblock.c' || echo '/opt/build-couchdb/dependencies/curl/src/'`/opt/build-couchdb/dependencies/curl/lib/nonblock.c
STDOUT mv -f .deps/nonblock.Tpo .deps/nonblock.Po
STDOUT /bin/bash ../libtool --tag=CC   --mode=link gcc  -g0 -O2 -Wno-system-headers   -Xlinker -rpath=/opt/build-couchdb/build/lib -L/opt/build-couchdb/build/lib -o curl main.o hugehelp.o urlglob.o writeout.o writeenv.o getpass.o homedir.o curlutil.o os-specific.o xattr.o strtoofft.o strdup.o rawstr.o nonblock.o  ../lib/libcurl.la -lrt -lz
STDOUT libtool: link: gcc -g0 -O2 -Wno-system-headers -Wl,-rpath=/opt/build-couchdb/build/lib -o .libs/curl main.o hugehelp.o urlglob.o writeout.o writeenv.o getpass.o homedir.o curlutil.o os-specific.o xattr.o strtoofft.o strdup.o rawstr.o nonblock.o  -L/opt/build-couchdb/build/lib ../lib/.libs/libcurl.so -lssl -lcrypto -lrt -lz -Wl,-rpath -Wl,/opt/build-couchdb/build/lib
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT Making all in include
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT Making all in curl
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make  all-am
STDOUT make[3]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[3]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[2]: Nothing to be done for `all-am'.
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y'
STDOUT make[1]: Nothing to be done for `all-am'.
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y'
STDERR make install
STDOUT Making install in lib
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT test -z "/opt/build-couchdb/build/lib" || /bin/mkdir -p "/opt/build-couchdb/build/lib"
STDOUT  /bin/bash ../libtool   --mode=install /usr/bin/install -c   libcurl.la '/opt/build-couchdb/build/lib'
STDOUT libtool: install: /usr/bin/install -c .libs/libcurl.so.4.2.0 /opt/build-couchdb/build/lib/libcurl.so.4.2.0
STDOUT libtool: install: (cd /opt/build-couchdb/build/lib && { ln -s -f libcurl.so.4.2.0 libcurl.so.4 || { rm -f libcurl.so.4 && ln -s libcurl.so.4.2.0 libcurl.so.4; }; })
STDOUT libtool: install: (cd /opt/build-couchdb/build/lib && { ln -s -f libcurl.so.4.2.0 libcurl.so || { rm -f libcurl.so && ln -s libcurl.so.4.2.0 libcurl.so; }; })
STDOUT libtool: install: /usr/bin/install -c .libs/libcurl.lai /opt/build-couchdb/build/lib/libcurl.la
STDOUT libtool: install: /usr/bin/install -c .libs/libcurl.a /opt/build-couchdb/build/lib/libcurl.a
STDOUT libtool: install: chmod 644 /opt/build-couchdb/build/lib/libcurl.a
STDOUT libtool: install: ranlib /opt/build-couchdb/build/lib/libcurl.a
STDOUT libtool: finish: PATH="/opt/build-couchdb/build/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/sbin" ldconfig -n /opt/build-couchdb/build/lib
STDOUT ----------------------------------------------------------------------
STDOUT Libraries have been installed in:
STDOUT    /opt/build-couchdb/build/lib
STDOUT
STDOUT If you ever happen to want to link against installed libraries
STDOUT in a given directory, LIBDIR, you must either use libtool, and
STDOUT specify the full pathname of the library, or use the `-LLIBDIR'
STDOUT flag during linking and do at least one of the following:
STDOUT    - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
STDOUT      during execution
STDOUT    - add LIBDIR to the `LD_RUN_PATH' environment variable
STDOUT      during linking
STDOUT    - use the `-Wl,-rpath -Wl,LIBDIR' linker flag
STDOUT    - have your system administrator add LIBDIR to `/etc/ld.so.conf'
STDOUT
STDOUT See any operating system documentation about shared libraries for
STDOUT more information, such as the ld(1) and ld.so(8) manual pages.
STDOUT ----------------------------------------------------------------------
STDOUT make[2]: Nothing to be done for `install-data-am'.
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/lib'
STDOUT Making install in src
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT make  install-am
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT make[3]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT test -z "/opt/build-couchdb/build/bin" || /bin/mkdir -p "/opt/build-couchdb/build/bin"
STDOUT   /bin/bash ../libtool   --mode=install /usr/bin/install -c curl '/opt/build-couchdb/build/bin'
STDOUT libtool: install: /usr/bin/install -c .libs/curl /opt/build-couchdb/build/bin/curl
STDOUT make[3]: Nothing to be done for `install-data-am'.
STDOUT make[3]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/src'
STDOUT Making install in include
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT Making install in curl
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[3]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[3]: Nothing to be done for `install-exec-am'.
STDOUT test -z "/opt/build-couchdb/build/include/curl" || /bin/mkdir -p "/opt/build-couchdb/build/include/curl"
STDOUT  /usr/bin/install -c -m 644 /opt/build-couchdb/dependencies/curl/include/curl/curl.h /opt/build-couchdb/dependencies/curl/include/curl/curlver.h /opt/build-couchdb/dependencies/curl/include/curl/easy.h /opt/build-couchdb/dependencies/curl/include/curl/mprintf.h /opt/build-couchdb/dependencies/curl/include/curl/stdcheaders.h /opt/build-couchdb/dependencies/curl/include/curl/multi.h /opt/build-couchdb/dependencies/curl/include/curl/typecheck-gcc.h curlbuild.h /opt/build-couchdb/dependencies/curl/include/curl/curlrules.h '/opt/build-couchdb/build/include/curl'
STDOUT make[3]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[3]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[3]: Nothing to be done for `install-exec-am'.
STDOUT make[3]: Nothing to be done for `install-data-am'.
STDOUT make[3]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[1]: Entering directory `/tmp/curl-build20131010-349-11tvr4y'
STDOUT make[2]: Entering directory `/tmp/curl-build20131010-349-11tvr4y'
STDOUT test -z "/opt/build-couchdb/build/bin" || /bin/mkdir -p "/opt/build-couchdb/build/bin"
STDOUT  /usr/bin/install -c curl-config '/opt/build-couchdb/build/bin'
STDOUT test -z "/opt/build-couchdb/build/lib/pkgconfig" || /bin/mkdir -p "/opt/build-couchdb/build/lib/pkgconfig"
STDOUT  /usr/bin/install -c -m 644 libcurl.pc '/opt/build-couchdb/build/lib/pkgconfig'
STDOUT make  install-data-hook
STDOUT make[3]: Entering directory `/tmp/curl-build20131010-349-11tvr4y'
STDOUT cd include && make install
STDOUT make[4]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT Making install in curl
STDOUT make[5]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[6]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[6]: Nothing to be done for `install-exec-am'.
STDOUT test -z "/opt/build-couchdb/build/include/curl" || /bin/mkdir -p "/opt/build-couchdb/build/include/curl"
STDOUT  /usr/bin/install -c -m 644 /opt/build-couchdb/dependencies/curl/include/curl/curl.h /opt/build-couchdb/dependencies/curl/include/curl/curlver.h /opt/build-couchdb/dependencies/curl/include/curl/easy.h /opt/build-couchdb/dependencies/curl/include/curl/mprintf.h /opt/build-couchdb/dependencies/curl/include/curl/stdcheaders.h /opt/build-couchdb/dependencies/curl/include/curl/multi.h /opt/build-couchdb/dependencies/curl/include/curl/typecheck-gcc.h curlbuild.h /opt/build-couchdb/dependencies/curl/include/curl/curlrules.h '/opt/build-couchdb/build/include/curl'
STDOUT make[6]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[5]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include/curl'
STDOUT make[5]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[6]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[6]: Nothing to be done for `install-exec-am'.
STDOUT make[6]: Nothing to be done for `install-data-am'.
STDOUT make[6]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[5]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT make[4]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/include'
STDOUT cd docs && make install
STDOUT make[4]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/docs'
STDOUT Making install in examples
STDOUT make[5]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/docs/examples'
STDOUT make[6]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/docs/examples'
STDOUT make[6]: Nothing to be done for `install-exec-am'.
STDOUT make[6]: Nothing to be done for `install-data-am'.
STDOUT make[6]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/docs/examples'
STDOUT make[5]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/docs/examples'
STDOUT Making install in libcurl
STDOUT make[5]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/docs/libcurl'
STDOUT make[6]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/docs/libcurl'
STDOUT make[6]: Nothing to be done for `install-exec-am'.
STDOUT test -z "/opt/build-couchdb/build/share/man/man3" || /bin/mkdir -p "/opt/build-couchdb/build/share/man/man3"
STDOUT  /usr/bin/install -c -m 644 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_cleanup.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_getinfo.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_init.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_perform.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_setopt.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_duphandle.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_formadd.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_formfree.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_getdate.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_getenv.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_slist_append.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_slist_free_all.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_version.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_version_info.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_escape.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_unescape.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_free.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_strequal.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_mprintf.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_global_init.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_global_cleanup.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_add_handle.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_cleanup.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_fdset.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_info_read.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_init.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_perform.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_remove_handle.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_share_cleanup.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_share_init.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_share_setopt.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/libcurl.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/libcurl-easy.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/libcurl-multi.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/libcurl-share.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/libcurl-errors.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_strerror.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_strerror.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_share_strerror.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_global_init_mem.3 '/opt/build-couchdb/build/share/man/man3'
STDOUT  /usr/bin/install -c -m 644 /opt/build-couchdb/dependencies/curl/docs/libcurl/libcurl-tutorial.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_reset.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_escape.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_unescape.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_setopt.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_socket.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_timeout.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_formget.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_assign.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_pause.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_recv.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_easy_send.3 /opt/build-couchdb/dependencies/curl/docs/libcurl/curl_multi_socket_action.3 '/opt/build-couchdb/build/share/man/man3'
STDOUT make[6]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/docs/libcurl'
STDOUT make[5]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/docs/libcurl'
STDOUT make[5]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/docs'
STDOUT make[6]: Entering directory `/tmp/curl-build20131010-349-11tvr4y/docs'
STDOUT make[6]: Nothing to be done for `install-exec-am'.
STDOUT test -z "/opt/build-couchdb/build/share/man/man1" || /bin/mkdir -p "/opt/build-couchdb/build/share/man/man1"
STDOUT  /usr/bin/install -c -m 644 /opt/build-couchdb/dependencies/curl/docs/curl.1 /opt/build-couchdb/dependencies/curl/docs/curl-config.1 '/opt/build-couchdb/build/share/man/man1'
STDOUT make[6]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/docs'
STDOUT make[5]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/docs'
STDOUT make[4]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y/docs'
STDOUT make[3]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y'
STDOUT make[2]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y'
STDOUT make[1]: Leaving directory `/tmp/curl-build20131010-349-11tvr4y'
STDERR git ls-files --others --ignored --exclude-standard | xargs rm -f || true
STDERR /opt/build-couchdb/dependencies/autoconf-2.69/configure --prefix=/opt/build-couchdb/build --program-suffix=2.69 --datarootdir=/opt/build-couchdb/build/share/autoconf-2.69
STDOUT checking for a BSD-compatible install... /usr/bin/install -c
STDOUT checking whether build environment is sane... yes
STDOUT checking for a thread-safe mkdir -p... /bin/mkdir -p
STDOUT checking for gawk... no
STDOUT checking for mawk... mawk
STDOUT checking whether make sets $(MAKE)... yes
STDOUT checking build system type... x86_64-unknown-linux-gnu
STDOUT checking host system type... x86_64-unknown-linux-gnu
STDOUT configure: autobuild project... GNU Autoconf
STDOUT configure: autobuild revision... 2.69
STDOUT configure: autobuild hostname... 9d6ed2bf4148
STDOUT configure: autobuild timestamp... 20131010T182507Z
STDOUT checking whether /bin/sh -n is known to work... no
STDOUT checking for characters that cannot appear in file names... none
STDOUT checking whether directories can have trailing spaces... yes
STDOUT checking for expr... /usr/bin/expr
STDOUT checking for GNU M4 that supports accurate traces... /usr/bin/m4
STDOUT checking whether /usr/bin/m4 accepts --gnu... yes
STDOUT checking how m4 supports trace files... --debugfile
STDOUT checking for perl... /usr/bin/perl
STDOUT checking whether /usr/bin/perl Fcntl::flock is implemented... yes
STDOUT checking for emacs... no
STDOUT checking for xemacs... no
STDOUT checking for emacs... no
STDOUT checking where .elc files should go... ${datadir}/emacs/site-lisp
STDOUT checking for grep that handles long lines and -e... /bin/grep
STDOUT checking for egrep... /bin/grep -E
STDOUT checking for a sed that does not truncate output... /bin/sed
STDOUT checking whether make is case sensitive... yes
STDOUT configure: creating ./config.status
STDOUT config.status: creating tests/Makefile
STDOUT config.status: creating tests/atlocal
STDOUT config.status: creating man/Makefile
STDOUT config.status: creating lib/emacs/Makefile
STDOUT config.status: creating Makefile
STDOUT config.status: creating doc/Makefile
STDOUT config.status: creating lib/Makefile
STDOUT config.status: creating lib/Autom4te/Makefile
STDOUT config.status: creating lib/autoscan/Makefile
STDOUT config.status: creating lib/m4sugar/Makefile
STDOUT config.status: creating lib/autoconf/Makefile
STDOUT config.status: creating lib/autotest/Makefile
STDOUT config.status: creating bin/Makefile
STDOUT config.status: linking /opt/build-couchdb/dependencies/autoconf-2.69/GNUmakefile to GNUmakefile
STDOUT config.status: executing tests/atconfig commands
STDOUT == Output of config.log ==
STDERR cat config.log
STDOUT This file contains any messages produced by compilers while
STDOUT running configure, to aid debugging if configure makes a mistake.
STDOUT
STDOUT It was created by GNU Autoconf configure 2.69, which was
STDOUT generated by GNU Autoconf 2.69.  Invocation command line was
STDOUT
STDOUT   $ /opt/build-couchdb/dependencies/autoconf-2.69/configure --prefix=/opt/build-couchdb/build --program-suffix=2.69 --datarootdir=/opt/build-couchdb/build/share/autoconf-2.69
STDOUT
STDERR make
STDOUT ## --------- ##
STDOUT ## Platform. ##
STDOUT ## --------- ##
STDOUT
STDOUT hostname = 9d6ed2bf4148
STDOUT uname -m = x86_64
STDOUT uname -r = 3.8.0-31-generic
STDOUT uname -s = Linux
STDOUT uname -v = #46~precise1-Ubuntu SMP Wed Sep 11 18:21:16 UTC 2013
STDOUT
STDOUT /usr/bin/uname -p = unknown
STDOUT /bin/uname -X     = unknown
STDOUT
STDOUT /bin/arch              = unknown
STDOUT /usr/bin/arch -k       = unknown
STDOUT /usr/convex/getsysinfo = unknown
STDOUT /usr/bin/hostinfo      = unknown
STDOUT /bin/machine           = unknown
STDOUT /usr/bin/oslevel       = unknown
STDOUT /bin/universe          = unknown
STDOUT
STDOUT PATH: /opt/build-couchdb/build/bin
STDOUT PATH: /usr/local/sbin
STDOUT PATH: /usr/local/bin
STDOUT PATH: /usr/sbin
STDOUT PATH: /usr/bin
STDOUT PATH: /sbin
STDOUT PATH: /bin
STDOUT
STDOUT
STDOUT ## ----------- ##
STDOUT ## Core tests. ##
STDOUT ## ----------- ##
STDOUT
STDOUT configure:1796: checking for a BSD-compatible install
STDOUT configure:1864: result: /usr/bin/install -c
STDOUT configure:1875: checking whether build environment is sane
STDOUT configure:1925: result: yes
STDOUT configure:2066: checking for a thread-safe mkdir -p
STDOUT configure:2105: result: /bin/mkdir -p
STDOUT configure:2118: checking for gawk
STDOUT configure:2148: result: no
STDOUT configure:2118: checking for mawk
STDOUT configure:2134: found /usr/bin/mawk
STDOUT configure:2145: result: mawk
STDOUT configure:2156: checking whether make sets $(MAKE)
STDOUT configure:2178: result: yes
STDOUT configure:2263: checking build system type
STDOUT configure:2277: result: x86_64-unknown-linux-gnu
STDOUT configure:2297: checking host system type
STDOUT configure:2310: result: x86_64-unknown-linux-gnu
STDOUT configure:2337: autobuild project... GNU Autoconf
STDOUT configure:2343: autobuild revision... 2.69
STDOUT configure:2348: autobuild hostname... 9d6ed2bf4148
STDOUT configure:2359: autobuild timestamp... 20131010T182507Z
STDOUT configure:2387: checking whether /bin/sh -n is known to work
STDOUT configure:2406: result: no
STDOUT configure:2410: checking for characters that cannot appear in file names
STDOUT configure:2430: result: none
STDOUT configure:2436: checking whether directories can have trailing spaces
STDOUT configure:2450: result: yes
STDOUT configure:2461: checking for expr
STDOUT configure:2479: found /usr/bin/expr
STDOUT configure:2491: result: /usr/bin/expr
STDOUT configure:2510: checking for GNU M4 that supports accurate traces
STDOUT configure:2559: result: /usr/bin/m4
STDOUT configure:2562: checking whether /usr/bin/m4 accepts --gnu
STDOUT configure:2572: result: yes
STDOUT configure:2589: checking how m4 supports trace files
STDOUT configure:2599: result: --debugfile
STDOUT configure:2623: checking for perl
STDOUT configure:2641: found /usr/bin/perl
STDOUT configure:2654: result: /usr/bin/perl
STDOUT configure:2673: checking whether /usr/bin/perl Fcntl::flock is implemented
STDOUT configure:2687: result: yes
STDOUT configure:2705: checking for emacs
STDOUT configure:2735: result: no
STDOUT configure:2705: checking for xemacs
STDOUT configure:2735: result: no
STDOUT configure:2788: checking for emacs
STDOUT configure:2815: result: no
STDOUT configure:2839: checking where .elc files should go
STDOUT configure:2868: result: ${datadir}/emacs/site-lisp
STDOUT configure:2881: checking for grep that handles long lines and -e
STDOUT configure:2939: result: /bin/grep
STDOUT configure:2944: checking for egrep
STDOUT configure:3006: result: /bin/grep -E
STDOUT configure:3011: checking for a sed that does not truncate output
STDOUT configure:3075: result: /bin/sed
STDOUT configure:3085: checking whether make is case sensitive
STDOUT configure:3100: result: yes
STDOUT configure:3279: creating ./config.status
STDOUT
STDOUT ## ---------------------- ##
STDOUT ## Running config.status. ##
STDOUT ## ---------------------- ##
STDOUT
STDOUT This file was extended by GNU Autoconf config.status 2.69, which was
STDOUT generated by GNU Autoconf 2.69.  Invocation command line was
STDOUT
STDOUT   CONFIG_FILES    =
STDOUT   CONFIG_HEADERS  =
STDOUT   CONFIG_LINKS    =
STDOUT   CONFIG_COMMANDS =
STDOUT   $ ./config.status
STDOUT
STDOUT on 9d6ed2bf4148
STDOUT
STDOUT config.status:797: creating tests/Makefile
STDOUT config.status:797: creating tests/atlocal
STDOUT config.status:797: creating man/Makefile
STDOUT config.status:797: creating lib/emacs/Makefile
STDOUT config.status:797: creating Makefile
STDOUT config.status:797: creating doc/Makefile
STDOUT config.status:797: creating lib/Makefile
STDOUT config.status:797: creating lib/Autom4te/Makefile
STDOUT config.status:797: creating lib/autoscan/Makefile
STDOUT config.status:797: creating lib/m4sugar/Makefile
STDOUT config.status:797: creating lib/autoconf/Makefile
STDOUT config.status:797: creating lib/autotest/Makefile
STDOUT config.status:797: creating bin/Makefile
STDOUT config.status:966: linking /opt/build-couchdb/dependencies/autoconf-2.69/GNUmakefile to GNUmakefile
STDOUT config.status:985: executing tests/atconfig commands
STDOUT
STDOUT ## ---------------- ##
STDOUT ## Cache variables. ##
STDOUT ## ---------------- ##
STDOUT
STDOUT ac_cv_build=x86_64-unknown-linux-gnu
STDOUT ac_cv_dir_trailing_space=yes
STDOUT ac_cv_env_EMACSLOADPATH_set=
STDOUT ac_cv_env_EMACSLOADPATH_value=
STDOUT ac_cv_env_EMACS_set=
STDOUT ac_cv_env_EMACS_value=
STDOUT ac_cv_env_M4_set=
STDOUT ac_cv_env_M4_value=
STDOUT ac_cv_env_build_alias_set=
STDOUT ac_cv_env_build_alias_value=
STDOUT ac_cv_env_host_alias_set=
STDOUT ac_cv_env_host_alias_value=
STDOUT ac_cv_env_target_alias_set=
STDOUT ac_cv_env_target_alias_value=
STDOUT ac_cv_host=x86_64-unknown-linux-gnu
STDOUT ac_cv_path_EGREP='/bin/grep -E'
STDOUT ac_cv_path_EXPR=/usr/bin/expr
STDOUT ac_cv_path_GREP=/bin/grep
STDOUT ac_cv_path_M4=/usr/bin/m4
STDOUT ac_cv_path_PERL=/usr/bin/perl
STDOUT ac_cv_path_SED=/bin/sed
STDOUT ac_cv_path_install='/usr/bin/install -c'
STDOUT ac_cv_path_mkdir=/bin/mkdir
STDOUT ac_cv_perl_flock_implemented=yes
STDOUT ac_cv_prog_AWK=mawk
STDOUT ac_cv_prog_EMACS=no
STDOUT ac_cv_prog_gnu_m4_debugfile=--debugfile
STDOUT ac_cv_prog_gnu_m4_gnu=yes
STDOUT ac_cv_prog_make_make_case=yes
STDOUT ac_cv_prog_make_make_set=yes
STDOUT ac_cv_sh_n_works=no
STDOUT ac_cv_unsupported_fs_chars=
STDOUT am_cv_lispdir='${datadir}/emacs/site-lisp'
STDOUT
STDOUT ## ----------------- ##
STDOUT ## Output variables. ##
STDOUT ## ----------------- ##
STDOUT
STDOUT ACLOCAL='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run aclocal-1.11'
STDOUT AMTAR='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run tar'
STDOUT AUTOCONF='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run autoconf'
STDOUT AUTOHEADER='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run autoheader'
STDOUT AUTOMAKE='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run automake-1.11'
STDOUT AWK='mawk'
STDOUT CYGPATH_W='echo'
STDOUT DEFS='-DPACKAGE_NAME=\"GNU\ Autoconf\" -DPACKAGE_TARNAME=\"autoconf\" -DPACKAGE_VERSION=\"2.69\" -DPACKAGE_STRING=\"GNU\ Autoconf\ 2.69\" -DPACKAGE_BUGREPORT=\"bug-autoconf@gnu.org\" -DPACKAGE_URL=\"http://www.gnu.org/software/autoconf/\" -DPACKAGE=\"autoconf\" -DVERSION=\"2.69\"'
STDOUT ECHO_C=''
STDOUT ECHO_N='-n'
STDOUT ECHO_T=''
STDOUT EGREP='/bin/grep -E'
STDOUT EMACS='no'
STDOUT EMACSLOADPATH=''
STDOUT EXPR='/usr/bin/expr'
STDOUT GREP='/bin/grep'
STDOUT HELP2MAN='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run help2man'
STDOUT INSTALL_DATA='${INSTALL} -m 644'
STDOUT INSTALL_PROGRAM='${INSTALL}'
STDOUT INSTALL_SCRIPT='${INSTALL}'
STDOUT INSTALL_STRIP_PROGRAM='$(install_sh) -c -s'
STDOUT LIBOBJS=''
STDOUT LIBS=''
STDOUT LTLIBOBJS=''
STDOUT M4='/usr/bin/m4'
STDOUT M4_DEBUGFILE='--debugfile'
STDOUT M4_GNU='--gnu'
STDOUT MAKEINFO='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run makeinfo'
STDOUT MAKE_CASE_SENSITIVE_FALSE='#'
STDOUT MAKE_CASE_SENSITIVE_TRUE=''
STDOUT MKDIR_P='/bin/mkdir -p'
STDOUT PACKAGE='autoconf'
STDOUT PACKAGE_BUGREPORT='bug-autoconf@gnu.org'
STDOUT PACKAGE_NAME='GNU Autoconf'
STDOUT PACKAGE_STRING='GNU Autoconf 2.69'
STDOUT PACKAGE_TARNAME='autoconf'
STDOUT PACKAGE_URL='http://www.gnu.org/software/autoconf/'
STDOUT PACKAGE_VERSION='2.69'
STDOUT PATH_SEPARATOR=':'
STDOUT PERL='/usr/bin/perl'
STDOUT PERL_FLOCK='yes'
STDOUT SED='/bin/sed'
STDOUT SET_MAKE=''
STDOUT SHELL='/bin/bash'
STDOUT STRIP=''
STDOUT TEST_EMACS='no'
STDOUT VERSION='2.69'
STDOUT ac_cv_dir_trailing_space='yes'
STDOUT ac_cv_sh_n_works='no'
STDOUT ac_cv_unsupported_fs_chars=''
STDOUT am__isrc=' -I$(srcdir)'
STDOUT am__leading_dot='.'
STDOUT am__tar='${AMTAR} chof - "$$tardir"'
STDOUT am__untar='${AMTAR} xf -'
STDOUT bindir='${exec_prefix}/bin'
STDOUT build='x86_64-unknown-linux-gnu'
STDOUT build_alias=''
STDOUT build_cpu='x86_64'
STDOUT build_os='linux-gnu'
STDOUT build_vendor='unknown'
STDOUT datadir='${datarootdir}'
STDOUT datarootdir='/opt/build-couchdb/build/share/autoconf-2.69'
STDOUT docdir='${datarootdir}/doc/${PACKAGE_TARNAME}'
STDOUT dvidir='${docdir}'
STDOUT exec_prefix='${prefix}'
STDOUT host='x86_64-unknown-linux-gnu'
STDOUT host_alias=''
STDOUT host_cpu='x86_64'
STDOUT host_os='linux-gnu'
STDOUT host_vendor='unknown'
STDOUT htmldir='${docdir}'
STDOUT includedir='${prefix}/include'
STDOUT infodir='${datarootdir}/info'
STDOUT install_sh='${SHELL} /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/install-sh'
STDOUT libdir='${exec_prefix}/lib'
STDOUT libexecdir='${exec_prefix}/libexec'
STDOUT lispdir='${datadir}/emacs/site-lisp'
STDOUT localedir='${datarootdir}/locale'
STDOUT localstatedir='${prefix}/var'
STDOUT mandir='${datarootdir}/man'
STDOUT mkdir_p='/bin/mkdir -p'
STDOUT oldincludedir='/usr/include'
STDOUT pdfdir='${docdir}'
STDOUT prefix='/opt/build-couchdb/build'
STDOUT program_transform_name='s&$$&2.69&'
STDOUT psdir='${docdir}'
STDOUT sbindir='${exec_prefix}/sbin'
STDOUT sharedstatedir='${prefix}/com'
STDOUT sysconfdir='${prefix}/etc'
STDOUT target_alias=''
STDOUT
STDOUT ## ----------- ##
STDOUT ## confdefs.h. ##
STDOUT ## ----------- ##
STDOUT
STDOUT /* confdefs.h */
STDOUT #define PACKAGE_NAME "GNU Autoconf"
STDOUT #define PACKAGE_TARNAME "autoconf"
STDOUT #define PACKAGE_VERSION "2.69"
STDOUT #define PACKAGE_STRING "GNU Autoconf 2.69"
STDOUT #define PACKAGE_BUGREPORT "bug-autoconf@gnu.org"
STDOUT #define PACKAGE_URL "http://www.gnu.org/software/autoconf/"
STDOUT #define PACKAGE "autoconf"
STDOUT #define VERSION "2.69"
STDOUT
STDOUT configure: exit 0
STDOUT == End of config.log ==
STDOUT CDPATH="${ZSH_VERSION+.}:" && cd /opt/build-couchdb/dependencies/autoconf-2.69 && /bin/bash /opt/build-couchdb/dependencies/autoconf-2.69/build-aux/missing --run aclocal-1.11 -I m4
STDERR sh: 1: autom4te: not found
STDERR aclocal-1.11: autom4te failed with exit status: 127
STDERR make: *** [/opt/build-couchdb/dependencies/autoconf-2.69/aclocal.m4] Error 1
STDERR git checkout HEAD .
STDERR rm -rf autom4te.cache
STDERR rake aborted!
STDERR Command failed with status (2): [make ...]
STDERR
STDERR Tasks: TOP => default => couchdb:build => couchdb:couchdb => /opt/build-couchdb/build/bin/couchdb => /opt/build-couchdb/build/bin/autoconf2.69
STDERR (See full trace by running task with --trace)
root@byymir:/opt/sublime_text# . .zshrc