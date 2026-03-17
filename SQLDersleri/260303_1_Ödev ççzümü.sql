
--1)Her bir üründen kaç tane satýldýðýný ürün adý , birim fiyatý , kalan stok þeklinde gösteriniz
--2)her bir sipariþte kaç ürün olduðunu getiren scripti kodlayýnýz
select 
(select OrderDate from Orders as o where o.OrderID=od.OrderID) as 'Tarih',
OrderID,SUM(Quantity) as 'Ürün Sayýsý' 
from [Order Details] as od
group by OrderID

--3)her bir müþterinin aldýðý ürün sayýsý Firmaadý, Firma yetkili ad-soyad, þehir ve ülke þeklinde hesaplayýnýz
use NorthwindDB

select *from Customers
select *from Orders
select *from [Order Details]
--****************************************************
select 
distinct
(select CompanyName from Customers as c where c.CustomerID=o.CustomerID) as Firma,
(select ContactName from Customers as c where c.CustomerID=o.CustomerID) as Kiþi,
(select c.Country+'-'+c.City from Customers as c where c.CustomerID=o.CustomerID) as 'Ülke-Þehir',
o.OrderId,
count(o.OrderId) as 'Sipariþ Sayýsý',
(select SUM( Quantity) from [Order Details] as od where od.OrderID=o.OrderID)

from 
Orders as o
group by o.CustomerID,o.OrderID
