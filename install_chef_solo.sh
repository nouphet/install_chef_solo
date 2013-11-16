#!/bin/bash  sh
# vim: set fileencoding=utf-8 :
#
# Author:     nouphet
# Created:  2013-11-16
#
#!/bin/bash

yum groupinstall "Development Tools"

yum install libffi-devel openssl-devel readline-devel zlib-devel git subversion gdbm-devel httpd-devel libcurl-devel ncurses-devel openssl-devel readline-devel sqlite-devel zlib-devel


rpm -Uvh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
sed -i "s%enabled=1%enabled=0%g" /etc/yum.repos.d/epel.repo
yum --enablerepo=epel install libyaml-devel

cd
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p327.tar.gz
tar xvzf ruby-1.9.3-p327.tar.gz
cd ruby-1.9.3-p327
./configure --prefix /opt/ruby
make;make install

/opt/ruby/bin/gem install chef
/opt/ruby/bin/gem install knife-solo

