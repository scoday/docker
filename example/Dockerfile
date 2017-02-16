# This will make more sense later. Concept is essentially Docker Registry / Nginx / Gitlab all in one docker-compose.yml
# on Ubuntu with ZFS.
FROM ubuntu:latest
MAINTAINER scoday@gmx.com


 RUN apt-get update \
 && apt-get install -y supervisor git-core openssh-client ruby2.1 \
      zlib1g libyaml libssl \
      libgdbm3 libreadline libncurses libffi \
      libxml libxslt libcurl libicu gitlab\
&& gem install --no-document bundler \
&& rm -rf /var/lib/apt/lists/* # 20150712

#ADD assets/setup/ /app/setup/
#RUN chmod 755 /app/setup/install
#RUN /app/setup/install

#ADD assets/init /app/init
#RUN chmod 755 /app/init

VOLUME ["/gitlab/data"]

ENTRYPOINT ["/app/init"]
CMD ["app:start"]
