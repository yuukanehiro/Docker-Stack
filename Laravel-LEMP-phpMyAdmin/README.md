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

$ mkdir -p $HOME/Documents/develop/Laravel-test/
$ rsync -arv $HOME/Documents/develop/Docker-Stack/Laravel-LEMP-phpMyAdmin/src/ $HOME/Documents/develop/Laravel-test/
$ cd $HOME/Documents/develop/Laravel-test/laravel/
```

<p>2. Run Docker</p>

```
$ docker-compose build --no-cache
$ docker-compose up -d
```

<p>3. Setting Environment</p>

```
$ vi .env

+ DB_CONNECTION=mysql
+ DB_HOST=mysql80
+ DB_PORT=3306
+ DB_DATABASE=appdb
+ DB_USERNAME=root
+ DB_PASSWORD=secret
```

<p>4. Access!</p>

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


$ vi .env

+ DB_CONNECTION=mysql
+ DB_HOST=mysql80
+ DB_PORT=3306
+ DB_DATABASE=appdb
+ DB_USERNAME=root
+ DB_PASSWORD=secret
```



## Author

[yuu kanehiro](https://github.com/yuukanehiro)
