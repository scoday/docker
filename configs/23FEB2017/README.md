# OpenSUSE Nginx: 

## Intro
Concept here is to have basically an a/b docker config that SaltStack
or some automation tool can manipulate. Early stages now but it will
grow...

## Concept
  [git]
    |
    |
[jenkins]---|
	    |-->[saltstack]---|<DockerDev Repo>
			      |-->[nginx.conf]
			      |-->[w3]
			      |-->[bash_script]
	    		      |-->[Trigger Build + Docker run]
Basically use SaltStack as it is intended however instead of maintaining
systems states it will maintain Docker build file states.

## Dockerfile
This file is straight forward, install nginx, quagga, then remove 
the nginx config and a basic one. After that, add whatever files
for your W3. The W3 will be the primary for the deployment engine,
so this way once you hit "deploy" bamboo, or jenkins, etc. will 
then place the files into the W3 and hopefully trigger a build 
which will spawn a docker.

## Nginx.conf
Basic nginx.conf will add specifics here including conceptual
workflow. 
 
## Ports
Current ports open are 443/80/22 - nothing spectacular here just
need to take a look at things and stuff.
