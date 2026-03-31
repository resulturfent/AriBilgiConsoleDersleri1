---*******************************
--27 Mart 2026 SQL Dersleri
--****************************************
--Ürün aramasý yapan sp_Urun_Satis_Sonuc_Ara adýnda bir sp için arama sonuçlarýný fiyat, stok, bilgileri veren yapýyý kodlayýnýz?
use [Northwind]
select *from Products--stok bilgileri
select *from [Order Details]

declare @aranacakUrunAdiKelimesi nvarchar(250)='chan'
select 
p.ProductName as 'Ürün Adý',
p.UnitPrice as 'Birim Fiyatý',
p.unitsInstock as 'Mevcut Stok',
od.unitprice as 'Satis Fiyatý', 
-- od.Quantity as 'Satýlan Adet'
sum(od.Quantity) as 'Satýlan Adet'
from Products as p
join [Order Details] as od on od.ProductID=p.ProductID
where  p.ProductName like '%'+@aranacakUrunAdiKelimesi+'%'
group By p.ProductName,p.UnitPrice,p.UnitsInStock,od.unitprice
go
create proc sp_Urun_Satis_Sonuc_Ara 
(
@aranacakUrunAdiKelimesi nvarchar(250)
)
as 
begin
select 
p.ProductName as 'Ürün Adý',
p.UnitPrice as 'Birim Fiyatý',
p.unitsInstock as 'Mevcut Stok',
od.unitprice as 'Satis Fiyatý', 
-- od.Quantity as 'Satýlan Adet'
sum(od.Quantity) as 'Satýlan Adet'
from Products as p
join [Order Details] as od on od.ProductID=p.ProductID
where  p.ProductName like '%'+@aranacakUrunAdiKelimesi+'%'
group By p.ProductName,p.UnitPrice,p.UnitsInStock,od.unitprice
end
go

exec sp_Urun_Satis_Sonuc_Ara 'br'
--tarih verildiðinde o tarihte hangi saipariþleri olduðunu sipariþ, müþteri bilgilerini getiren sp_Musteri_Satis_Rapor sp adý ile kodlayýnýz
select *from Orders where year( OrderDate)=1998
select 
c.CompanyName,c.ContactName,c.ContactTitle,
o.OrderDate,o.Freight,o.RequiredDate
from Orders  as o
join Customers as c on c.customerId=o.CustomerID
where OrderDate='1998.01.01'
go
create proc sp_Musteri_Satis_Rapor(@aranacakTarih datetime)
as
begin
select 
c.CompanyName,c.ContactName,c.ContactTitle,
o.OrderDate,o.Freight,o.RequiredDate
from Orders  as o
join Customers as c on c.customerId=o.CustomerID
where OrderDate=@aranacakTarih
end
go

execute sp_Musteri_Satis_Rapor '1998.01.02'
