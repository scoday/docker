FROM scoday/opensuse-sandbox:new
MAINTAINER "S. Michael Day" scoday@gmx.com

 	RUN zypper up -y \
 	&& zypper in -y dialog net-tools openssh  quagga salt-minion postgresql94-server postgresql94

# Make PostgreSQL User (If required I am not too sure with SuSE Install). 
#        RUN useradd -ms /bin/bash postgres
	RUN mkdir -p /srv/postgres/data
	

# Adding files into a container	ADD ./conf/nginx.conf /etc/nginx/
	ADD ./conf/postgresql.conf /etc/sysconfig/postgresql

# Append something to a configuration file
# 	RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Set working directory
#	WORKDIR /etc/nginx

# Set Command
# doesn't seem to work with openSUSE
#	CMD /bin/start_nginx.sh 

# Ports
	EXPOSE 5432
