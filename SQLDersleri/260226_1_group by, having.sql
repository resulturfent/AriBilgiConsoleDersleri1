--*************************
--26 Þubat 2026 MS-SQL Dersleri
--***********************************
--group by,having 
--group by => bir tabloda ayný datalarý saymak için kullanýlan gruplama yapýsýdýr
use NorthwindDB
select *from Products 
select CategoryID,ProductName,UnitPrice from Products order by CategoryID

select CategoryID,COUNT(ProductID) from Products--???

select Country,City,CompanyName,ContactName from Customers order by Country--91

select Country,COUNT(CustomerID)as 'Müþteri Sayýsý' from Customers
group by Country order by [Müþteri Sayýsý]
/*
Group By maddeleri
1- group by ile yazýlan kolonlar select -from arasýnda kullanýlmalýdýr(* çalýþmaz)
2-group by genelde hazýr fonksiyon ile beraber kullanýlýr
3-select-from arasýnda yazýlan kolon group by ile beraber kullanýlmasý zorunludur
*/
--en çok müþteriye sahip 3 ülke
select top 3 Country,COUNT(CustomerID)as 'Müþteri Sayýsý' from Customers
group by Country order by [Müþteri Sayýsý] desc
--en az müþteriye sahip 5 ülke
select top 5 Country,COUNT(CustomerID)as 'Müþteri Sayýsý' from Customers
group by Country order by [Müþteri Sayýsý] asc
--her bir ülkeye kaç sipariþ gönderildiðini hesaplayýnýz
--ship=> gemi
select *from Orders--957

select ShipCountry,COUNT(OrderID) as 'Sipariþ Sayýsý' from Orders
group by ShipCountry--21

select *from Orders where ShipCountry='Finland'--30
select *from Orders where ShipCountry='USA'--137

select ShipCountry from Orders--957
select  distinct ShipCountry  from Orders--21 data--distinct grouplamadan ayný datalarý tek satýrda verir ama sayýsý group by ile ancak tespit edilebilir
select   ShipCountry  from Orders
group by  ShipCountry  --21 data
------------------------------------------------------
--tarih ile group by kullanýmý
select *from Orders
select YEAR(OrderDate) from Orders--957
select distinct YEAR(OrderDate) from Orders--95

--her bir yýlda kaç sipariþ yapýldýðýný hesaplayýnýz
select YEAR(OrderDate),COUNT(OrderID) as 'Yýllýk Sayý' from Orders--957
group by YEAR(OrderDate)
--year=> tarih içinde yýlý verir
--month=> tarih için ayý verir
--day=> tarih içinde günü verir
--her ülkeye giden sipariþ saysýy
select ShipCountry,COUNT(OrderID) from Orders
group by ShipCountry
--her bir ülkenin þehirlerine giden sipariþ sayýsý
select ShipCountry,ShipCity,COUNT(OrderID) as 'Sipariþ sayýsý' from Orders
group by ShipCountry,ShipCity  order by ShipCountry,ShipCity
--1998 yýlýnda en çok sipariþ verilen 4 ay bilgisini bulunuz
--group by where den sonra kullanýlýr
--Order by her zaman script lerin en sonunda yazýlýr
select  top 4 year(OrderDate),month(OrderDate), count(OrderID) as 'Sipariþ Sayýsý' from Orders
where  year(OrderDate)=1998
group by year(OrderDate),month(OrderDate)
order by [Sipariþ Sayýsý] desc
--
select *from Orders
select *from Customers
--Her bir kategoride kaç ürün olduðunu hesaplayýnýz
--kategori, ürün
--
select *from Categories
select *from Products

select CategoryID,COUNT(ProductID) from Products
group by CategoryID
--subquery, join
--Having => group by için koþul baðlayama iþlemini yapar

select ShipCountry,COUNT(OrderID) as Sayý from Orders
--where COUNT(OrderID)=30--where tablo kolonlarý için sorgu yapar
group by ShipCountry
having COUNT(OrderID)=30
--tablo kolon sorgu iþlemlerinde where nasýl sorgu yapýyorsa group by ile beraber having te o sorgu iþlemini yapar. having ile where burda farklý görevleri üstlenir. where olan kolonlarda çalýþýr, having group by ile hesaplama için kullanýlan hazýr fonksiyonla beraber oluþturulan yeni hesaplayýcý yapý için sorgu yapar





