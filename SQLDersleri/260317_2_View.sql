--**************************
--SQL dersleri  17 Mart 2026
--****************************
--View
--View maddeler
--1)View sanal tablolardýr. Sanal tablo tablo gibi çalýþýr, tablo gibi datayý anlýk olarak tutmayabilir
--2)View hantaldýr. Proje içerisinde performans açýsýndan hantal olduðu için kullanýmý pek tercih edilmez
--3)View script saklamak için kullanýlýr. Database ile beraber taþýnýr. Bir script için bu saklama açýsýndan çok iyi bir yöntemdir.
--4)parametre almaz (C# methodlar alýrdý deðer döndüren/döndürmeyen), deðer döndürmez (void method).
--5) kesinlikler crud iþlemleri yapýlamaz


--Soru:
--her kliniðe hangi doktor baktýðýný klinik , doktor bilgisi veren script
--view yazmadan önce view için gerekli olan script yazýlýr sonrasýnda view içine taþýnýr
--doktor ve 
--view için script
select distinct
k.Adi,d.Adi,d.Soyadi
from Klinikler as k
inner join Doktorlar as d on d.Id=k.DoktorId

--her yeni nesne (tablo, view, stored procedure,function, trigger) create yaparken 2 go arasýnda yazýlýr
--view oluþturmak için create kullanýlýr
go
create view vw_Doktor_Klinik--view oluþturmak için yapýlan ilk isim yapýsý
as--view kod gövdesinin baþladýðýný gösterir
--script baþlangýcý
select distinct
k.Adi as Klinik,d.Adi as Doktor,d.Soyadi
from Klinikler as k
inner join Doktorlar as d on d.Id=k.DoktorId
--script bitiþ
go

--view kullanmak
select *from vw_Doktor_Klinik

--olan bir view'in kolonlarýný ya da yeni nesneler eklemek için alter kullanýlýr
go
alter view vw_Doktor_Klinik
as
select distinct
k.Adi as Klinik,d.Adi as 'Doktor Adý',d.Soyadi as 'Doktor Soyadý'
from Klinikler as k
inner join Doktorlar as d on d.Id=k.DoktorId 
--order by 1 desc--> View içinde Order by kullanýlmaz
go
--tablo ile yapýlan her þeyi view ile yapabilirsiniz!
select *from vw_Doktor_Klinik
select Klinik,[Doktor Adý] from vw_Doktor_Klinik
where [Doktor Adý] like '%a%'
--her bir doktorun kaç randevusu olduðunu doktor bilgisi, randevu sayýsý þeklinde hesaplayan vw_Doktor_Randevu_Sayisi adýnda view yaparak kodlayýnýz
--script
select 
d.Adi,d.Soyadi, COUNT(r.Id)
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
group by d.Adi,d.Soyadi
--view oluþturalum
go
create view vw_Doktor_Randevu_Sayisi
as
select 
d.Adi,d.Soyadi, COUNT(r.Id) as Sayýsý
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
group by d.Adi,d.Soyadi
go
select *from vw_Doktor_Randevu_Sayisi--view çaðrýlmasý
--view güncellenmesi
go
alter view vw_Doktor_Randevu_Sayisi
as
select 
d.Adi as 'Doktor Adý',d.Soyadi as 'Doktor Soyadý', COUNT(r.Id) as 'Randevu Sayýsý'
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
group by d.Adi,d.Soyadi
go
--create ,alter,drop
--drop ile olan view silinir
drop view [dbo].[vw_Doktor_Klinik]
--3'ten fazla randevusu olan doktorlarýn hangi hastalara randevusu olduðunu hesaplayýnýz?
--subquery kullanýlmayacak
select 
DoktorId,COUNT(Id)as 'Randevu Sayýsý'
from Randevular
group by DoktorId
having COUNT(Id)>3---randevu sayýsý 3 ten fazla olan doktorlarýn Id deðerini bulduk ve bir view e taþýyalým, subquery kullanamadýðýmýz için

go
create view vw_Doktor_Randevu_SubQuery
as
select 
DoktorId,COUNT(Id)as 'Randevu Sayýsý'
from Randevular
group by DoktorId
having COUNT(Id)>3
go
--view ile bize lazým olacak hasta, randevu bilgilerini getirmek için diðer tablolar ile join'leyeceðiz
select 
d.Adi,d.Soyadi,h.Adi,h.Soyadi,r.tarih,r.Saat
from vw_Doktor_Randevu_SubQuery as vw
inner join Doktorlar as d on d.Id=vw.DoktorId
inner join Randevular as r on r.DoktorId=d.Id
inner join Hastalar as h on h.Id=r.HastaId
--ÖDEVLER
--Northwnd  için
--1) her bir üründe kaç adet satýldýðýný veren vw_UrunSatislari adýnda view yapýnýz
--2) Her bir müþterini kaç ürün aldýðýný hesaplayan vw_MusteriUrunSayisi adýnda view yapýnýz
--3)Her bir personelin getirdiði getiri toplamýný hesaplayan vw_PersonelGetirileri adýnda view kodlayýnýz
--HastaneDB için
--4)Her bir klinikte kaç hastanýn tedavi olduðunu bütün zamanlar için hesaplayan vw_KlinikHastaSayisi adýnda view kodlayýnýz
