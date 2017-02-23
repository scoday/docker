FROM scoday/opensuse-sandbox:new
MAINTAINER "S. Michael Day" scoday@gmx.com

 	RUN zypper up -y \
# 	&& zypper in -y git-core openssh ruby2.1 nginx quagga haproxy
 	&& zypper in -y dialog net-tools git-core openssh nginx quagga

# Remove Nginx Default
        RUN rm -v /etc/nginx/nginx.conf

# Copy local Nginx Config --> /etc/nginx on Docker
# use this method for other files, etc..

	ADD nginx.conf /etc/nginx/

# Append daemon off to config."
 	RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Set working directory
	WORKDIR /etc/nginx

# Set Command
	CMD service nginx start 

# Set Command
# CMD ["haproxy -f /etc/haproxy/haproxy.cfg"]

# Ports
	EXPOSE 80
	EXPOSE 443
	EXPOSE 22
