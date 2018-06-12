# Continuos integration

Process:

- create the docker container
- create the droplets in digital-ocean
- push the code to the droplet, options:
  - circleci
  - git
  - rsync
  - ftp
- Restart docker container

TODO:

- push the code to the droplet
  - circleci
  - git
  - rsync
  - ftp


https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04

https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-16-04




http://blog.netgusto.com/solving-web-file-permissions-problem-once-and-for-all/

```
# Installing bindfs (just the first time)
apt-get update
apt-get -y install bindfs

# Creating the application mountpoint
mkdir -p ~/html
chown -Rf esteban:esteban ~/html
chmod -Rf 770 ~/html
```


bindfs#/var/www/html /home/esteban/html fuse force-user=esteban,force-group=esteban,create-for-user=www-data,create-for-group=www-data,create-with-perms=0770,chgrp-ignore,chown-$


mount ~/html
