echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update
apt-get install bind9 -y
apt-get install lynx -y

mkdir /etc/bind/wise
cp /etc/bind/db.local /etc/bind/wise/wise.ITA02.com

cat wise.ITA02.com > /etc/bind/wise/wise.ITA02.com
cat named.conf.local > /etc/bind/named.conf.local
cat named.conf.options > /etc/bind/named.conf.options

cp /etc/bind/db.local /etc/bind/wise/3.211.192.in-addr.arpa
cat 3.211.192.in-addr.arpa > /etc/bind/wise/3.211.192.in-addr.arpa

service bind9 restart