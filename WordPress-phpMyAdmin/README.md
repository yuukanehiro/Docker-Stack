
# 1_init_Setup_local

<p>$ chmod +x Docker-Stack/WordPress-phpMyAdmin/shell/1_init_Setup_local.sh</p>
<p>$ sh Docker-Stack/WordPress-phpMyAdmin/shell/1_init_Setup_local.sh</p>


# 2. Build Docker
<p>$ cd Docker-Stack/WordPress-phpMyAdmin/</p>
<p>$ docker-compose up -d</p>


### Delete Container and Image
<p>$ docker stop $(docker ps -q)</p>
<p>$ docker rm $(docker ps -q -a)</p>
<p>$ docker rmi $(docker images -q)</p>

