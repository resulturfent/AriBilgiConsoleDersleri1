---**********************************************
--24 Mart 2026 SQL dersleri
--**********************************
--View örnekler 

--View Nedir??
--Sanal tablolar, Crud  yapýlmaz, Parametre almaz, tablolarýn izini taþýr, performans için iyi deðildir
--
--go
--Create view ViewName
--as
--Script(Kod)
--go
use NorthwindDB
--Her bir Kategoride kaç ürün satýldýðýný hesaplayan vw_Categori_Order_Detail adýnda view içinde kodlayýnýz?
select *from [Order Details]
select *from Categories

select 
c.CategoryName,sum(od.Quantity) as 'Product Sum'
from Categories as c
join Products as p on p.CategoryID=c.CategoryID--elçi, baðlayýcý
join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryName

go
create view vw_Categori_Order_Detail
as
select 
c.CategoryID,c.CategoryName,sum(od.Quantity) as 'Product Sum'
from Categories as c
join Products as p on p.CategoryID=c.CategoryID--elçi, baðlayýcý tablo
join [Order Details] as od on od.ProductID=p.ProductID
group by c.CategoryID,c.CategoryName
go

select *from vw_Categori_Order_Detail


