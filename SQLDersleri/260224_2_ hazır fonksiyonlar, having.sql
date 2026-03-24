--***************************************************
--hazýr fonksiyonlar, Group By, having
--***************************************************
use NorthwindDB
--Hazýr fonksiyonlar
--max, min, count(sayar ama null deðilse), sum(toplama iþlemi yapar), avarage(AVG-ortalama alýr)

select *from Products order by UnitPrice
select top 1 *from Products order by UnitPrice --asc oto vardýr. Fiyatý en düþük olanýnýn getirir
select top 1 *from Products order by UnitPrice desc--Fiyatý en yüksek olanýnýn getirir

select MIN(UnitPrice) as 'Min Fiyat' from Products
select max(UnitPrice) as 'Max Fiyat'from Products
select sum(UnitPrice) as 'Fiyat Toplamý'from Products
select count(UnitPrice) as 'Sayý'from Products--Count sadece dolu  olan kolonlarý sayar, null gelirse saymaz, bu nedenler kullanýlmasýna dikkat edilemlidir
--count(*)  yýldýz ile kullanýmý bütün kolonlarýna göre say demektir , bu garati bir yoldur sayma iþlemi olur ama performans konuusunda iyi bir seçim deðildir yýldýz yazmak

select *from Products
select COUNT(ProductID) from Products--80
select COUNT(CategoryID) from Products--78 sonuç geldi çünkü CategoryId için 2 data null içerir, count bu 2 null deðeri göremez ve 2 eksik sayar
select COUNT(*) from Products--garantidir ama bütün kolonlarý sayma iþlemine dahil ettiði için performans düþürür

--**********************
select top 1 *from Products order by UnitPrice 
select MIN(UnitPrice) as 'Min Fiyat' from Products
select  ProductName,MIN(UnitPrice) as 'Min Fiyat' from Products
--Yukardaki script hata verir.Hazýr fonksiyonlar genelde group by ile beraber kullanýlýr


