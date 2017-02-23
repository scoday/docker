# HAProxy / Quagga
# http://www.github.com/scoday/docker/haproxy

FROM opensuse:latest
LABEL MAINTAINER "S. Michael Day"
LABEL MAINTAINER "scoday709@outlook.com"
LABEL com.calenergy.infra="CalEnergy.us"
LABEL com.calenergy.infra="HAProxy"
LABEL version="1.0"

# Install Things {haproxy,ruby,nginx,quagga,ssh}
RUN \
  zypper in -y quagga haproxy

# Add HAproxy Files:
ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD start.bash /haproxy-start

# Define mountable directories.
VOLUME ["/leap42"]
VOLUME ["/dev/log"]

# Define working directory.
WORKDIR /etc/haproxy

# Define default command.
#CMD ["bash", "/haproxy-start"]

# Expose ports.
EXPOSE 80
EXPOSE 443
