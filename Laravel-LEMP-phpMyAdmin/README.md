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
$ vi .env
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





## Author

[yuu kanehiro](https://github.com/yuukanehiro)
