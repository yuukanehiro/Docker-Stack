
# 1_init_Setup_local

```
$ chmod +x Docker-Stack/WordPress-phpMyAdmin/shell/1_init_Setup_local.sh
$ sh Docker-Stack/WordPress-phpMyAdmin/shell/1_init_Setup_local.sh
```

# 2. Build Docker

```
$ cd Docker-Stack/WordPress-phpMyAdmin/
$ docker-compose up -d
```


<hr/>

# Delete Container and Image

```
$ docker stop $(docker ps -q)
$ docker rm $(docker ps -q -a)
$ docker rmi $(docker images -q)
```
