use OkulDB
--her bir sýnýfta kaç öðrenci olduðunu hesaplayýnýz

select 
s.SýnýfNo +'-'+s.SýnýfSubesi Sýnýf,
COUNT(OgrencilerID) as Mevcut

from Sýnýflar as s
inner join Ogrenciler as o on o.SinifID=s.SýnýflarID
group by s.SýnýfNo,s.SýnýfSubesi
--
--Her bir bölümde kaç öðrenci olduðunu hesaplayýnýz

select *from Ogrenciler
select *from Sýnýflar
select *from Bolumler

select 
b.BolumlerID,b.BolumAdi, COUNT(b.BolumlerID)
from Bolumler as b 
 join Sýnýflar as s on s.BolumID=b.BolumlerID
 join Ogrenciler as o on s.SýnýflarID=o.SinifID
 group by b.BolumlerID,b.BolumAdi
 order by BolumlerID
 --**********************************************
 --Ödevler--right-left join aðýrlýklý 
 --1)hangi öðrencilerin sýnýf atamasý olmamýþtýr
 --2)Hangi sýnýflara hanüz kayýt yapýlamýþtýr
 --3) her bir öðrencinin aldýðý ders sayýsý
 --4) her bir velinin iletiþimde olduðu öðrencisinin Sýnýf öðretmerni bilgisi veli bilgi , öðrenci bilgisi veren script
 --5) en çok izin yapan 10 öðrencilerin bilgisi  ve öðrencilerin veli bilgisi listesini veriniz



