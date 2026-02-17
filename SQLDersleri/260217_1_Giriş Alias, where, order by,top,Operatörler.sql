--yorum satýrý tek satýrlýk=> //
/*
çoklu satýr
yorum
satýrý
*/
use Northwind--DB(Database) çaðýrmak için use kullanýlýr

select *from Products--Northwind DB altýnda Products tablosundaki data(veri) larý listeler
--select=> seçmek
--* => bütün kolonlarý getirir, hepsi demek
--from=> den dan, tablo(tablo adý)'dan
--Products => tablo
--bir tabloda istenilen kadar data çekmek
select ProductID ,ProductName,UnitPrice ,UnitsInStock from products
--Aliases=> isimlendirme
/*
Product=> Ürünler
Customer=> Müþteri
Employee=> Personel, çalýþan
Order=> Sipariþ
Detail=> detay
Category=> Kategori
supplier=> Tedarikçiler
ship=> Yüklenicler
Region=> Bölge

*/
--ctrl+R=> sonuç penceresini göster/gizle
--execute/f5 => seçimi çalýþtýrýr. Eðer seçim yapmadan execute/f5 yaparsanýz bütün sayfadaki kodlar çalýþtýrýlýr
select *from Customers
--SQL küçük büyük harf duyarlýlýðý yoktur
select 
 CustomerId  as Kod, 
 CompanyNaME as 'Firma Adý', 
 ContactName as 'Ýletiþimdeki Kiþi',
 Address as [Adres],
 City as 'Þehir', Country  as Ülke
 from Customers
 --personel (Employee) tablosunda Adý,soyad, doðum tarihi, þehir, ülke kolonlarýný getirip kolonlarý TR ile gösteriniz?
 select FirstName as Adý,LastName as Soyadý,BirthDate [Doðum Tarihi],City Þehir,Country 'Ülke'from Employees
 
 --Sipariþler(Order) tablosunda Sipariþ tarihi(OrderDate), Kargo maliyeti(Freight),Nakliye þehri,ülkesi(shipCity,ShipCountry)þeklinde listeleyiniz
 select OrderDate as [Sipariþ Tarihi],Freight 'Kargo Maliyeti', ShipCity 'Nakliye Þehri',ShipCountry 'Nakliye ülkesi'  from Orders
 ------------------------------------------------
 --MS-SQL=> Microsoft -Stracture(Mimari, yapý) Query(Sorgu) Language (Dil)
 --SQL bir programlama dili deðildir
 --T-SQL=> Transact SQL






