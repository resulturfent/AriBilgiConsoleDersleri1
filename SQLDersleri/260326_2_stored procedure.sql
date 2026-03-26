--*******************************
--26 Mart 2026 SQL dersleri
--****************************
--Stored Procedure
--kýsaca SP olarak isimlendirilir SP ler performans konusunda çok iyi olduklarý için çok kullanýlan bir nesnedir. 
--Saklý yordamlar olarak bilinir.
/*
SP lerin özellikleri
1-Performanslarý çok baþarýldýr. 
2-CRUD iþlemleri SP ler ile yapýlýr
3-Parametre alýr, döngü, karar yapýlarý , case when then yapýlarý kullanýlabilir
*/

use NorthwindDB
--SP oluþturulmasý

go
create procedure sp_Kategori_Urunler
as
begin
select 
c.CategoryName,p.ProductName,p.UnitPrice,p.UnitsInStock
from Categories as c
join Products as p on p.CategoryID=c.CategoryID
end
go
--SP çaðrýlmasý
execute sp_Kategori_Urunler
exec sp_Kategori_Urunler

--
go
create proc sp_Kategori_Urun_Ara(@aranacakKelime nvarchar(100))
as
begin
select 
c.CategoryName,p.ProductName,p.UnitPrice,p.UnitsInStock
from Categories as c
join Products as p on p.CategoryID=c.CategoryID
where p.ProductName like '%'+@aranacakKelime+'%'
end
go
execute sp_Kategori_Urun_Ara 'c'
execute sp_Kategori_Urun_Ara 'ch'

