--***********************************
--27 Þubat 2026 SQL Dersleri
--***************************************
--Subquery
--iç içe select  ya da sorgulayýcý yapýda sql scriptleri kullanmak
use NorthwindDB
--subquery=> alt sorgu
select *from Products
select *from Categories
select *from [Order Details]


select 
CategoryID ,
(select CategoryName from Categories  where Categories.CategoryID=Products.CategoryID )  as 'Kategori Adý',
ProductID,ProductName,UnitPrice,UnitsInStock
from  Products  

/*
1-subquery ile tanýmlanan script sadece bir kolon çaðrýlabilir
2-subquery ile ana sorugu where ile ortak kolonlar eþitlenmeli ve bu eþitlenme subquery (iç select ) ile yapýlmalý
3-2. maddenin devamý olarak iç select ile tanýmlanan tablo PK(Primary Key) kolon olmalýdýr

*/
--birden fazla tabloyu subquery olarak kullanmak
select *from Products
select *from Categories
select *from Suppliers

select  
(select s.CompanyName from Suppliers as s where  s.SupplierID=p.SupplierID) as 'Tedarikçi Firma',
(select s.ContactName from Suppliers as s where  s.SupplierID=p.SupplierID) as 'Tedarikçi Firma YYetkilisi',
(select c.CategoryName from Categories as c where c.CategoryID=p.CategoryID) as 'Kategori Adý',
p.ProductName,p.UnitPrice,p.UnitsInStock
from Products as p

--her bir sipariþin hangi personel tarafýnda yapýldýðýný sipariþ tarihi, kargo maliyeti, personel adýný getiren scripti kodlayýnýz?
select *from Orders
select *from Employees
--
select 
OrderDate as 'Sipariþ Tarih',Freight as 'Kargo',
(select e.FirstName+ SPACE(1)+e.LastName from Employees as e where  e.EmployeeID=o.EmployeeID) as 'Personel Adý-Soyadý'
--iç select ile operatörler kullanarak birden fazla kolonu tek kolon gibi göstermek þartýyla kullanabilirsiniz
from Orders as o
--iç select ile geçmiþ konulardaki group by, order by, wehere, like, ... bütün iþlemleri yapabilirsiniz
--Örnek
--her bir personelin kaç sipariþ verdiðini hesaplayalým
select 
(select e.FirstName+ SPACE(1)+e.LastName from Employees as e where  e.EmployeeID=o.EmployeeID) as 'Personel Adý-Soyadý',
COUNT(OrderID) as 'Sipariþ Sayýsý'
from Orders as o--Order tablosu ana select ama iç select te Employees tablosu var
--where --where ile de bu alanda varsa kolon koþullarý yazabilirsiniz
group by o.EmployeeID having COUNT(OrderID)>100
Order by [Sipariþ Sayýsý]
--group by kullanýrken select ile from arasýnda yazýlan kolon ,script  group by ile beraber yazýlmalýdýr(ZORUNLULUK)
--her bir müþterinin(customer) kaç sipariþi olduðunu Firmaadý, Firma yetkili ad-soyad, þehir ve ülke þeklinde hesaplayýnýz
select *from Orders
select *from Customers
--PK olan kolona sahip TABLO  iç select OLMAK ZORUNDADIR.
--CustomerId Customers tablosu için PK dir, o nedenler Customers tablosu iç select olmalýdýr
SELECT 
(select c.CompanyName  from Customers as c  where c.CustomerID=o.CustomerID) as 'Firma',
(select c.ContactName  from Customers as c  where c.CustomerID=o.CustomerID) as 'Yetkili Ad-Soyad',
(select c.Phone  from Customers as c  where c.CustomerID=o.CustomerID) as 'Telefon',
(select c.Country  from Customers as c  where c.CustomerID=o.CustomerID) as 'Ülke',
(select c.City  from Customers as c  where c.CustomerID=o.CustomerID) as 'Þehir',
COUNT(o.OrderID) as 'Müþteri Sipariþ Sayýsý',
'' as AÇIKLAMA
FROM Orders  as o
group by CustomerID order by [Müþteri Sipariþ Sayýsý]
--DERS
----------------------------------------------------
--1)Her bir üründen kaç tane satýldýðýný ürün adý , birim fiyatý , kalan stok þeklinde gösteriniz
--2)her bir sipariþte kaç ürün olduðunu getiren scripti kodlayýnýz
--3)her bir müþterinin aldýðý ürün sayýsý Firmaadý, Firma yetkili ad-soyad, þehir ve ülke þeklinde hesaplayýnýz
