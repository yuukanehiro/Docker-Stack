Laravel+LEMP+phpMyAdmin+Redis
====

Overview

## Description

Simple Install Laravel, Nginx, PHP-FPM, PHP7, MySQL8.0, phpMyAdmin, Redis


## Requirement

1. Mac
2. Docker for Mac Installed


## Usage


<p>1. Run Laravel</p>

```
$ git clone git@github.com:yuukanehiro/Docker-Stack.git

$ mkdir -p $HOME/Documents/develop/Laravel-test/
$ rsync -arv $HOME/Documents/develop/Docker-Stack/Laravel-LEMP-phpMyAdmin-Redis/src/ $HOME/Documents/develop/Laravel-test/
$ cd $HOME/Documents/develop/Laravel-test/laravel/
```

<p>2. Edit .env</p>

```
$ vi $HOME/Documents/develop/Laravel-test/env/.env.local
```


<p>2. Run Docker</p>

```
$ sh hard_update.sh
```


<p>3. Access!</p>

Laravel  
http://localhost/  

phpMyAdmin  
http://localhost:8080  

schemaspy  
http://localhost:8081  



## Restart


```
docker-compose down --rmi all --volumes
sh hard_update.sh

or

$ docker stop $(docker ps -q)
$ docker rm $(docker ps -q -a)
$ docker rmi $(docker images -q)
$ sh hard_update.sh
```



## Author

[yuu kanehiro](https://github.com/yuukanehiro)
