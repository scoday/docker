FROM scoday/opensuse-sandbox:new
MAINTAINER "S. Michael Day" scoday@gmx.com

 	RUN zypper up -y \
# 	&& zypper in -y git-core openssh ruby2.1 nginx quagga haproxy
 	&& zypper in -y git-core openssh nginx quagga

# Daemon Issue #
 	RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Set working directory
	WORKDIR /etc/nginx

# Set Command
	CMD ["nginx"]

# Set Command
# CMD ["haproxy -f /etc/haproxy/haproxy.cfg"]

# Ports
	EXPOSE 80
	EXPOSE 443
	EXPOSE 22
