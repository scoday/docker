#!/bin/bash -x
#
# Use this guideline to make a gitlab on USB disks or 
# realistically any type of disks. For this I used two
# USB thumbs + btrfs mirror to create a docker gitlab.
# Concept found here: https://blog.sixeyed.com/run-gitlab-on-a-usb-stick-with-docker/
# The rest all from my cranial processing unit.
# 

create-btrfs() {
	echo -n "Be forewarned, whatever you put here will be DESTROYED."
	echo -n "Please type drive ids (e.g. /dev/sdd /dev/sdb): "
	  read answer
	  mkfs.btrfs -L DatenSpeicher -m raid1 -d raid1 $answer -f
}

create-gitlabmnt() {
	echo -n "This will create a partition on / named gitlab."
	mkdir /gitlab && mount -L DatenSpeicher /gitlab
}

create-gitdirs() {
	echo -n "This will create the requisite directories."
	mkdir /gitlab/{config,logs,data}
}

create-docker-yml() {
echo -n "Will create the docker yml file now."
echo "
gitlab:  
 container_name: gitlab
 image: gitlab/gitlab-ce:8.5.3-ce.0
 hostname: usb-gitlab
 environment:
   GITLAB_OMNIBUS_CONFIG: |
     external_url 'http://127.0.0.1:8050'
     gitlab_rails['gitlab_shell_ssh_port'] = 522
     ports:
      - '8050:8050'
      - '522:22'
     volumes:
      - /gitlab/config:/etc/gitlab
      - /gitlab/logs:/var/log/gitlab
      - /gitlab/data:/var/opt/gitlab
 privileged: true
" > /gitlab/docker-compose.yml
}

start-docker() {
	cd /gitlab
	docker-compose up -d
}

show-docker-ids() {
	docker ps
}

create-btrfs
create-gitlabmnt
create-gitdirs
create-docker-yml
start-docker
show-docker-ids
