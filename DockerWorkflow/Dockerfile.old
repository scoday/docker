FROM scoday/opensuse-sandbox:new
#FROM os-sb02:dev
MAINTAINER "S. Michael Day" scoday@gmx.com

 	RUN zypper up -y \
 	&& zypper in -y dialog net-tools git-core openssh nginx quagga salt-minion

# Make DIRs && Add index.html
	RUN mkdir -p /srv/www
	ADD ./w3/index.html /srv/www/

# Remove Nginx Default
        RUN rm -v /etc/nginx/nginx.conf

# Copy local Nginx Config --> /etc/nginx on Docker
# use this method for other files, etc..

	ADD ./conf/nginx.conf /etc/nginx/
	ADD ./scripts/start_nginx.sh /bin/

# Append daemon off to config."
 	RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Set working directory
	WORKDIR /etc/nginx

# Set Command
# doesn't seem to work with openSUSE
	CMD /bin/start_nginx.sh 

# Ports
	EXPOSE 80
	EXPOSE 443
	EXPOSE 22
