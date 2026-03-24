--***********************************************
--5 Mart Perþembe SQL dersleri-join devam
--************************************************
use NorthwindDB
--en fazla sipariþte görev alan personelin hangi ürün sipariþlerinde görev aldýðýný ürün, birim fiyat, satýþ fiyatý, satýlan miktak, mevcut stok ve personel bilgileri veren scripti kodlayýnýz

select top 1 EmployeeID ,COUNT(OrderId) Sayý from Orders 
group by EmployeeID order by  Sayý desc


select 
e.FirstName,
e.LastName,
p.ProductName,
SUM( od.UnitPrice) as 'Satýþ Fiyatý',
sum(od.Quantity) as [Satýlan Adet],
p.UnitsInStock,
p.UnitPrice
			from Employees as e
inner join  Orders		as o on o.EmployeeID=e.EmployeeID
inner join  [Order Details] as od on od.OrderID=o.OrderID
inner join  Products	as p on p.ProductID=od.ProductID
where  e.EmployeeID in ( select top 1 EmployeeID  Sayý from Orders  group by EmployeeID order by  Sayý desc)
group by e.FirstName,e.LastName,p.ProductName,p.UnitPrice,p.UnitsInStock
order by p.ProductName
--En az sipariþ veren Müþterinin müþteri bilgileri ile beraber hangi ürünleri sipariþ ettiðini hesaplayýnýz



----------*********************************
select top 1  CustomerID,COUNT(OrderID) Sayý from Orders
group by CustomerID order by Sayý asc
--
select*	from Customers as c
inner join  Orders		as o on o.CustomerID=c.CustomerID
inner join  [Order Details] as od on od.OrderID=o.OrderID
inner join  Products	as p on p.ProductID=od.ProductID
--****************************************************************
select 
 p.ProductID,p.ProductName,SanalTablo.Sayý
from 
(select top 1  CustomerID,COUNT(OrderID) Sayý from Orders
group by CustomerID order by Sayý asc ) as SanalTablo

inner join Customers as c on c.CustomerID=SanalTablo.CustomerID
inner join  Orders		as o on o.CustomerID=c.CustomerID
inner join  [Order Details] as od on od.OrderID=o.OrderID
inner join  Products	as p on p.ProductID=od.ProductID
--where Sayý=2--??
group by p.ProductName,SanalTablo.Sayý,p.ProductID
order by Sayý
--********************************************************
select 
 p.ProductID,p.ProductName,SanalTablo.Sayý
from 
(select top 1  CustomerID,COUNT(OrderID) Sayý from Orders
group by CustomerID order by Sayý asc ) as SanalTablo

inner join Customers as c on c.CustomerID=SanalTablo.CustomerID
inner join  Orders		as o on o.CustomerID=c.CustomerID
inner join  [Order Details] as od on od.OrderID=o.OrderID
inner join  Products	as p on p.ProductID=od.ProductID
where Sayý=(select top 1 MIN(COUNT(OrderId)) Over () from Orders group by CustomerID )--
group by p.ProductName,SanalTablo.Sayý,p.ProductID
order by Sayý
--Over ()=> Group by ile beraber çalýþ
select top 1 MIN(COUNT(OrderId)) Over () from Orders group by CustomerID 
--*******************************************************************************


