Laravel+LEMP+phpMyAdmin
====

Overview

## Description

Simple Install Laravel, Nginx, PHP-FPM, PHP7, MySQL8.0


## Requirement

1. Mac
2. Docker for Mac Installed


## Usage


<p>1. Run Laravel</p>

```
$ git clone git@github.com:yuukanehiro/Docker-Stack.git
$ cd $HOME/Shell-Stack-master/WP-LEMP-Simple/Laravel-LEMP-phpMyAdmin/src/laravel
```


<p>2. Setting Environment</p>

```
$ cp .env.example .env
$ vi .env

+ DB_CONNECTION=mysql
+ DB_HOST=mysql80
+ DB_PORT=3306
+ DB_DATABASE=appdb
+ DB_USERNAME=root
+ DB_PASSWORD=secret
```


<p>3. Run Docker</p>

```
$ docker-compose build --no-cache
$ docker-compose up -d
```


<p>Access!</p>

Laravel  
http://localhost/  

phpMyAdmin  
http://localhost:8080  


  
  
## Restart

```
$ docker stop $(docker ps -q)
$ docker rm $(docker ps -q -a)
$ docker rmi $(docker images -q)

$ docker-compose build --no-cache
$ docker-compose up -d
```



## Author

[yuu kanehiro](https://github.com/yuukanehiro)
