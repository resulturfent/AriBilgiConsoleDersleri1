------------------------------------
--03 Mart 2026 SQL Dersleri
---------------------------------
--join
--birden fazla tablolarý baðlamak için join kullanýlýr
--tablolarýn birbirine baðlanabilmesi için ortak kolonlarýn eþitlenmesi gereklidir
--subquery performans düþürür ama join ise tam performana iþidir, yapýsý performansý çok az etkiler
--joinleryapýlýrken baðlanýlan tablolarýn bütün kolonlarý gelir, ihtiyaca göre istenilen yazýlýr

select *from Products
select *from Categories

select 
p.ProductName,p.UnitPrice,p.UnitsInStock,c.CategoryName,c.CategoryID,c.Description
			from Products   as p
inner join  Categories		as c on p.CategoryID=c.CategoryID
/*
join çeþitler
inner join=> 2 tablodan ortak data lar
right join=> 2 tablodan join yapýsýnýn saðýnda kalan tablodan bütün datalar, diðer tablodan da ortak datalar getirir
left join=> 2 tablodan join yapýsýnýn solunda kalan tablodan bütün datalar, diðer tablodan da ortak datalar getirir
full outer join=> 2 tablonun bütün kolonlarýný getirir
*/

select 
p.ProductName,p.UnitPrice,p.UnitsInStock,c.CategoryName,c.CategoryID,c.Description
			from Products   as p
inner join  Categories		as c on p.CategoryID=c.CategoryID
where p.CategoryID in (9,17,18)--data yok
--
select 
p.ProductName,p.UnitPrice,p.UnitsInStock,c.CategoryName,c.CategoryID,c.Description
			from Products   as p
inner join  Categories		as c on p.CategoryID=c.CategoryID--78
where p.ProductID in (78,79)--data yok
-- left join
select 
p.ProductName,p.UnitPrice,p.UnitsInStock,c.CategoryName,c.CategoryID,c.Description
			from Products   as p left join  Categories		as c on p.CategoryID=c.CategoryID--80
--right join
select 
p.ProductName,p.UnitPrice,p.UnitsInStock,c.CategoryName,c.CategoryID,c.Description
			from Products   as p right join  Categories		as c on p.CategoryID=c.CategoryID--82 data
select *from Categories
--full outer join
select 
p.ProductName,p.UnitPrice,p.UnitsInStock,c.CategoryName,c.CategoryID,c.Description
			from Products   as p full outer join  Categories		as c on p.CategoryID=c.CategoryID--84
----------------------------------------
--her bir müþterinin kaç ürün sipariþ ettiðin müþteri bilgisi ve ürün sayýsý verecek þekilde hesaplayýnýz
select *from Customers
select *from Orders
select *from [Order Details]
--
select 
c.CompanyName,c.CompanyName,
SUM(od.Quantity) as 'Ürün Sayýsý'

from		Customers as c
inner join	Orders	  as o on c.CustomerID=o.CustomerID
inner join  [Order Details] as od on od.OrderID=o.OrderID
--where koþullarýn yazýldýðý yer
group by c.CompanyName,c.CompanyName
----
--her bir müþterinin kaç sipariþi olduðunu müþteri bilgisi, sipariþ sayýsý verecek þekilde kodlayýnýz

select 
c.CompanyName,c.ContactName,c.Country,
COUNT(o.OrderID) as [Sipariþ Sayýsý]
	from Customers as c
inner join [Orders] as o on o.CustomerID=c.CustomerID
group by c.CompanyName,c.ContactName,c.Country
order by [Sipariþ Sayýsý]
--her bir personelin kaç ürün satýþýnda görev aldýðýný hesaplayýnýz?
select *from Orders
--her kategoride kaç ürün satýldýðýný categoryName, satýlan ürün sayýsý þeklinde hesaplayýnýz?

--en çok satýlan ürünü bilgisini,hangi müþterilerin sipariþ ettiðini hesaplayýnýz?
--1998 yýlýnýn Ocak ayýnda ilk sipariþi veren 3 müþterinin verdiði ürünleri , müþteri bilgilerini listeleyiniz
select top 3
*from Orders  as o
where year(o.OrderDate)=1998 and MONTH(OrderDate)=1
order by OrderDate

--56,76,52,13,25,70
select 
p.ProductID,p.ProductName,c.CompanyName,c.ContactName
from [Order Details] as od
inner join Products as p on p.ProductID=od.ProductID
inner join Orders as o on o.OrderID=od.OrderID 
inner join Customers as c on c.CustomerID=o.CustomerID
where od.OrderID in (select top 3 OrderID from Orders  as o where year(o.OrderDate)=1998 and MONTH(OrderDate)=1 order by OrderDate)
--ders