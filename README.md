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



### Soal No 3
Setelah itu ia juga ingin membuat subdomain eden.wise.yyy.com dengan alias www.eden.wise.yyy.com yang diatur DNS-nya di WISE dan mengarah ke Eden (3). 

### Jawaban No 3
jawaban


### Soal No 4
Buat juga reverse domain untuk domain utama (4). 

### Jawaban No 4
jawaban




#### Setelah itu, Loid juga membutuhkan agar url www.wise.yyy.com/index.php/home dapat menjadi menjadi www.wise.yyy.com/home (9).

#### Setelah itu, pada subdomain www.eden.wise.yyy.com, Loid membutuhkan penyimpanan aset yang memiliki DocumentRoot pada /var/www/eden.wise.yyy.com (10). 

#### Akan tetapi, pada folder /public, Loid ingin hanya dapat melakukan directory listing saja (11). 

#### Tidak hanya itu, Loid juga ingin menyiapkan error file 404.html pada folder /error untuk mengganti error kode pada apache (12). 
