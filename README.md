# Jarkom-Modul-2-ITA02-2022

Dibuat topologi seperti berikut ini:
![2022-10-29 (2)](https://user-images.githubusercontent.com/58323466/198829379-e2036082-a79f-4c03-8dc1-1c9c3c4e0b34.png)

### Soal No 1
WISE akan dijadikan sebagai DNS Master, Berlint akan dijadikan DNS Slave, dan Eden akan digunakan sebagai Web Server. Terdapat 2 Client yaitu SSS, dan Garden. Semua node terhubung pada router Ostania, sehingga dapat mengakses internet (1). 
### Jawaban No 1
Pada bagian ini, open terminal WISE lalu buka `nano /etc/bind/named.conf.options` dan comment bagian dnssec dan mengetikkan allow query seperti berikut: 

![image](https://user-images.githubusercontent.com/58323466/198829823-81fbf721-2988-4434-9b96-49551c525124.png)

Setelah itu, buka `nano /etc/bind/named.conf.local` dan atur agar WISE bertipe Master juga also-notify dan allow-transfer `192.211.2.2` yang merupakan Berlint seperti berikut: 

![image](https://user-images.githubusercontent.com/58323466/198829906-4e3ce4aa-7895-4fef-b439-596e2b8bfe0b.png)

Pada bagian Berlint juga perlu disetup dengan membuka terminal Berlint lalu ketik `cat /etc/bind/named.conf.local` dan atur agar berlint bertipe Slave seperti berikut: 

![image](https://user-images.githubusercontent.com/58323466/198830247-cc4df2db-ce34-40ae-8458-3582cf34dcd6.png)

Setelah itu, buka `cat /etc/bind/named.conf.options` dan atur seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198830425-a3d32b9d-1e25-4a4a-82f1-4b84cb98a0a0.png)



### Soal No 2
Untuk mempermudah mendapatkan informasi mengenai misi dari Handler, bantulah Loid membuat website utama dengan akses wise.yyy.com dengan alias www.wise.yyy.com pada folder wise (2). 

### Jawaban No 2
Buat folder wise dengan `mkdir /etc/bind/wise` dan lakukan copy `cp /etc/bind/db.local /etc/bind/wise/wise.ITA02.com` dan lakukan edit dengan `nano /etc/bind/wise/wise.ITA02.com` dengan isi seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198831330-4712239c-a360-42c8-a5b5-296cbd15e9f4.png)

Contoh melakukan `ping www.wise.ITA02.com -c 3` dari terminal lain dan dapat berhasil seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198831437-57083ea0-bf32-40b1-a4cc-e1640dc80c97.png)

Hal tersebut berhasil dikarenakan sebelumnya kita sudah mengisikan `nano /etc/resolv.conf` dengan memberitahu name servernya seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198831571-0abe5e1f-8cf2-4f9e-abd3-77f31aefe4b1.png)



### Soal No 3
Setelah itu ia juga ingin membuat subdomain eden.wise.yyy.com dengan alias www.eden.wise.yyy.com yang diatur DNS-nya di WISE dan mengarah ke Eden (3). 

### Jawaban No 3
Buka di terminal wise `nano /etc/bind/wise/wise.ITA02.com` dan menambahkan eden ke arah ipnya eden dan membuat alias cname ke www.eden untuk mengaliaskan ke eden.wise.ITA02.com. seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198831832-1cd04310-f95e-4392-81fa-269969f02f07.png)

Untuk membuktikannya bisa dilakukan `ping www.eden.wise.ITA02.com -c 4` dan berhasil keluar seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198831966-b25a33b5-a93a-425a-845d-ef3b510b3723.png)



### Soal No 4
Buat juga reverse domain untuk domain utama (4). 

### Jawaban No 4
Buka di terminal wise `nano /etc/bind/named.conf.local` dan menambahkan reverse domain seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198832206-849e6936-14fc-4e3a-9dcc-5a02e4241098.png)

Lalu lakukan copy dengan `cp /etc/bind/db.local /etc/bind/wise/3.211.192.in-addr.arpa` dan edit `nano /etc/bind/wise/3.211.192.in-addr.arpa` seperti berikut:

![image](https://user-images.githubusercontent.com/58323466/198832386-c910bede-559f-4167-8c50-b35c03532e63.png)


## BAGIAN ENDRO
BLABLABLA


### Soal No 9
Setelah itu, Loid juga membutuhkan agar url www.wise.yyy.com/index.php/home dapat menjadi menjadi www.wise.yyy.com/home (9).

### Jawaban No 9
jawaban


### Soal No 10
Setelah itu, pada subdomain www.eden.wise.yyy.com, Loid membutuhkan penyimpanan aset yang memiliki DocumentRoot pada /var/www/eden.wise.yyy.com (10). 

### Jawaban No 10
jawaban


### Soal No 11
Akan tetapi, pada folder /public, Loid ingin hanya dapat melakukan directory listing saja (11). 

### Jawaban No 11
jawaban 


### Soal No 12
Tidak hanya itu, Loid juga ingin menyiapkan error file 404.html pada folder /error untuk mengganti error kode pada apache (12). 

### Jawaban No 12
jawaban
