#! /bin/bash

sudo apt-get install -y tcl tk expect
sudo apt-get install -y mariadb-server python-pymysql
sudo cp /vagrant/mysql/mysqld_openstack.cnf /etc/mysql/mariadb.conf.d/
sudo service mysql restart
sudo /vagrant/mysql/run_mysql_secure_installation.exp huoyi1234