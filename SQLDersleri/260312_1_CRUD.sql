--***********************************************************
--21 Mart Perþembe SQL dersleri
------------------------------------------------------------
--DML=> Data Manipulation Language
--CRUD=> Create(insert), Read(list-select), Update(update), Delete(Delete)
use HastahaneDB

select *from Doktorlar
select *from Branslar

insert into Doktorlar 
--(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Email,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi,Aciklama)
(Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Pervin','Saralý','Kadýn','10234567891','0544 444 44 44',1,'Pamuk mah, esenyalý sok. No45/7 MAltepe-Ýstanbul','01.01.1987','Çankýrý',GETDATE(),null)
/*
Msg 547, Level 16, State 0, Line 11
The INSERT statement conflicted with the FOREIGN KEY constraint "FK_Doktorlar_Branslar". The conflict occurred in database "HastahaneDB", table "dbo.Branslar", column 'Id'.
bu hata BransId için Brans tablosunda bu data yok (conflict-çakýþma-eþleþmeme) demektir. Bu durumda bu Brans tablosunda Data yok ve data eklenmelidir ama data varsa bile olan data nýn Id deðeri burda yazýlmalýdýr
*/
insert into Branslar (Adi,Aciklama) values ('KBB',Null)
insert into Branslar (Adi,Aciklama) values ('Dahiliye',Null)
insert into Branslar (Adi,Aciklama) values ('Ortopedi',Null)

insert into Doktorlar (Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Samet','Salý','Erkek','10234567891','0544 444 33 33',1,'Salman mah, konyalý sok. No:10/11 Kartla-Ýstanbul','01.11.1991','Van',GETDATE(),null)

--Dahiliye
insert into Doktorlar (Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Ülkü','Erden','Kadýn','10234567800','0544 547 33 33',2,'man mah, bahçývan sok. No:1/41 Fikirtepe-Ýstanbul','12.29.1990','Rize',GETDATE(),null)
--tarih eklerken ay-gün-yýl olarak eklendi. SQL Ýngiliz tarih formatýný kabul eder

insert into Doktorlar (Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Birol','fatsalý','Erkek','10247567891','0544 554 21 54',2,'Salman mah, konyalý sok. No:10/11 Kartla-Ýstanbul','01.11.1991','Van',GETDATE(),null)
--
insert into Doktorlar (Adi,Soyadi,Cinsiyet,TC,Telefon,BransId,Adres,DogumTarihi,DogumYeri,GirisTarihi,CikisTarihi)
values
('Ömer','palatsý','Erkek','1027891','0544 554 21 54',3,'Salman mah, konyalý sok. No:10/11 Kartla-Ýstanbul','11.12.1988','Giresun',GETDATE(),null),
('Gaye','Ümreli','KAdýn','1024751','0542 554 19 32',3,'kahtalý  mah, mala sok. No:5/9 Kadýköy-Ýstanbul','01.9.1993','Ýstanbul',GETDATE(),null)

select *from Doktorlar
select *from Klinikler
--5 tane klinik giriniz
insert into Klinikler 
values
('KBB-1',null,5),
('KBB-2',null,4),
('Dahiliye-1',null,11)
--('Dahiliye-2',null,10),
--('Dahiliye-2',null,10),
--('Ortopedi-2',null,8)
--Data güncelleme 

select *from Branslar
select *from Klinikler
select *from Doktorlar

update Doktorlar set Email='pervin@gmail.com',Aciklama='Test data eklemesi' where Id=4
--Delete ile olan data silinebilir.

--Update ve Delete ile çalýþýrkenmutlaka sonuna where koþul baðlayýcýný ekleyin
insert into Klinikler 
values ('KBB-1',null,5)

select *from Klinikler

delete Klinikler where Id =10
delete Klinikler where Id  in (9,8,7)

--her bir tabloya 5 data, Randevular tablosuna da 30 data ekleyiniz
