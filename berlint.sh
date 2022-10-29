apt-get update -y
apt-get install bind9 -y

cat named.conf.local > /etc/bind/named.conf.local
cat named.conf.options > /etc/bind/named.conf.options

mkdir /etc/bind/operation
cp /etc/bind/db.local /etc/bind/operation/operation.wise.ITA02.com
cat operation.wise.ITA02.com > /etc/bind/operation/operation.wise.ITA02.com

service bind9 restart