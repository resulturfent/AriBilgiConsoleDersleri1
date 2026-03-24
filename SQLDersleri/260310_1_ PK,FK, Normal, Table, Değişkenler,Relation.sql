--*********************************************************
--10 Mart SQL dersleri 
--PK, Identity Specification,FK, Normalizasyon, Table Relation Management(tablo iliþki yönetimi),kolon oluþturulmasý, veri tipleri
--**********************************************************
use HastahaneDB
/*
Hastalar
Branþlar
Klinikler
Doktorlar
Personeller
Kullanýcýlar
Yetkiler
Randevular

*/
/*
Id=> Identity. Kimlik

*/

/*
1A
Ahmet -1A
Yaren-1A

Normalizasyom Kurallarý
1-Sonsuz=> baðlanan 2 tablodan, bir tabloda tek bir data diðer tabloda birden fazla datayla eþitleniyorsa gerçekleþir
Sonsuz-1=>""
1-1=> 2 tablodan PK ile baðlanýlýr, her bir dataya tek data eþitlenir
Sonsuza-Sonsuz => 2 tablo ile yapýlmaz 3 tablo olmalý. 1. tablo ve 3.tablo ,2. tabloya sonsuz sonsuz baðlanýr
*/
--CRUD iþlemleri
--Create
--Ýnsert,Update, Delete
