# Atlassian Confluence Attempt 101
# http://www.github.com/scoday/docker/oidockconf

FROM opensuse:latest
LABEL MAINTAINER "S. Michael Day"
LABEL MAINTAINER "me@scoday.tokyo"
LABEL com.calenergy.infra="CalEnergy"
LABEL com.calenergy.infra="Confluence"
LABEL version="1.0"

# Install Things 
RUN \
  zypper up -y && zypper in -y vim mysql tar gzip bzip nginx 

# Add required Files:
# ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD files/atlassian-confluence-6.0.7-x64.bin /

# Define mountable directories.
VOLUME ["/scratch"]
VOLUME ["/dev/log"]

# Define working directory.
WORKDIR /opt/atlassian

# Define default command.
#CMD ["bash", "/haproxy-start"]

# Expose ports.
EXPOSE 80
EXPOSE 443
