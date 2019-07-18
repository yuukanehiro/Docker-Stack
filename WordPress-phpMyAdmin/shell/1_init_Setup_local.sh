#!/bin/bash
set -e
 
# スクリプトディレクトリの取得
SCRIPT_DIR=`dirname $0`
cd $SCRIPT_DIR
 
 
# 開発ツールインストール
sudo yum groupinstall -y "Development Tools"
sudo yum -y install git zip mailx unzip htop rsync tree
 
 
 
## docker-composeインストール
echo "docker-composeインストール...Start" &&
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
echo "docker-composeインストール...End" &&
 
 
## Dockerインストール
echo "Dockerインストール...Start" &&
sudo yum install -y docker &&
sudo usermod -aG docker ${USER} &&
sudo gpasswd -a $USER docker &&
 
sudo systemctl restart docker &&
sudo systemctl enable docker &&
sudo systemctl status docker &&
echo "Dockerインストール...End" &&
 
 
## PHP7.2インストール
echo "PHP7.2インストール...Start" &&
sudo amazon-linux-extras install -y php7.2 &&
sudo amazon-linux-extras install -y epel &&
sudo yum install -y php-common php-gd php-mysqlnd php-mbstring php-pdo php-xml php-zip php-pecl-zip &&
echo "PHP7.2インストール...End" &&
 
 
## MySQLクライアントインストール
echo "MySQLクライアントインストール...Start" &&
sudo yum install -y mysql &&
echo "MySQLクライアントインストール...End" &&
 
## Redisクライアント
echo "Redisクライアントインストール...Start" &&
sudo yum install -y redis &&
echo "Redisクライアントインストール...End" &&
 
 
# サーバの更新と再起動
echo "サーバの更新と再起動...Start" &&
sudo yum update -y &&
sudo reboot now
