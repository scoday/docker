FROM opensuse:latest
MAINTAINER "S. Michael Day" scoday@gmx.com


 RUN zypper up -y \
 && zypper in -y git-core openssh ruby2.1 nginx haproxy \
 && gem install --no-document bundler

#ADD assets/setup/ /app/setup/
#RUN chmod 755 /app/setup/install
#RUN /app/setup/install

#ADD assets/init /app/init
#RUN chmod 755 /app/init

# VOLUME ["/gitlab/data"]
#
# ENTRYPOINT ["/app/init"]
# CMD ["app:start"]
