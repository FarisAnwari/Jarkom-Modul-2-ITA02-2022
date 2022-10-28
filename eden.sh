echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install apache2 -y
apt-get install php -y
apt-get install libapache2-mod-php7.0 -y
apt-get install wget -y
apt-get install unzip -y

mkdir /var/www/wise.ITA02.com
mkdir /var/www/eden.wise.ITA02.com
mkdir /var/www/strix.operation.wise.ITA02.com

wget "https://drive.google.com/uc?id=1S0XhL9ViYN7TyCj2W66BNEXQD2AAAw2e&export=download" -O wise.zip
unzip wise.zip
mv wise/* /var/www/wise.ITA02.com
rm wise.zip
rmdir wise

wget "https://drive.google.com/uc?id=1q9g6nM85bW5T9f5yoyXtDqonUKKCHOTV&export=download" -O eden.zip
unzip eden.zip
mv eden.wise/* /var/www/eden.wise.ITA02.com
rm eden.zip
rmdir eden.wise

wget "https://drive.google.com/uc?id=1bgd3B6VtDtVv2ouqyM8wLyZGzK5C9maT&export=download" -O strix.zip
unzip strix.zip
mv strix.operation.wise/* /var/www/strix.operation.wise.ITA02.com
rm strix.zip
rmdir strix.operation.wise

cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/wise.ITA02.com.conf
cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/eden.wise.ITA02.com.conf
cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/strix.operation.wise.ITA02.com.conf

cat wise.ITA02.com.conf > /etc/apache2/sites-available/wise.ITA02.com.conf
cat eden.wise.ITA02.com.conf > /etc/apache2/sites-available/eden.wise.ITA02.com.conf
cat strix.operation.wise.ITA02.com.conf > /etc/apache2/sites-available/strix.operation.wise.ITA02.com.conf
cat 000-default.conf > /etc/apache2/sites-available/000-default.conf

a2ensite wise.ITA02.com
a2ensite eden.wise.ITA02.com
a2ensite strix.operation.wise.ITA02.com

service apache2 reload
service apache2 restart
