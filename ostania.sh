iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 192.211.0.0/16

apt-get updateapt-get install lynx -y