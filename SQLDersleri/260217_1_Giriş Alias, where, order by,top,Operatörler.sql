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
 --MS-SQL=> Microsoft -Structured(Mimari, yapý) Query(Sorgu) Language (Dil)
 --SQL bir programlama dili deðildir
 --T-SQL=> Transact SQL
 --where, order by, top, operatörler, hazýr fonksiyonlar, group by, having, koþul, döngü, deðiþken tanýmý(declare),fonksiyon, view, stored procedure,trigger,create,alter,drop,insert, update, delete, .. iþlemleri yapar 
 --where
 select *from Products where unitprice=10
 select ProductName,UnitPrice,UnitsInStock,QuantityPerUnit from Products where unitprice=10
 /*
 Operatörler
 <,>,<=,>=,!=,=,+,-,*,/,%=> c# ta olduðu gibi kullanýlýr
 and,or=> and (&&)ve or(||) c# taki yapýlar ile ayný þekilde kullanýlýr 
 is nul,is not null=>??
 in, between =>??
 */
 select *from Orders where ShipCountry<>'Brazil'--<> eþit deðildir
 select *from Orders where ShipCountry!='Brazil'--!= eþit deðildir
 select *from Products where UnitPrice<>10 and UnitsInStock>100--fiyatý 10 olmayan ve stoðu 100 den büyük olan datalarý listeledik
 --sayý sorgularý direk yazýlýr ama metin için '' (tek týrnak) alýnmasý gereklidir
 --sýralama için order by kulanýlýr
 --order=> sipariþ, sýralama
 select *from customers order by City-- a dan z ye ya da küçükten büyüðe doðru sýralar. Kolon adýndan sonra bir þey yazýlmazsa oto olarak asc(ascanding) kabul eder 
 select *from customers order by City asc
 select *from customers order by City desc--descanding=> z'den a'ya ya da büyükten küçüðe doðru sýralama yapar
 --Order by her zaman bütün scriptin(SQL kod parçacýðý) sonunda yazýlýr
 --Order by ile beraber genelde top kullanýlýr
 select top 15 *from customers order by City asc--þehirlere göre a'dan z'ye sýrlayarak ilk 15 datayý listeledik
 --aynýsýný aþaðýda kolon ismi vererek yapalým
  select 
  top 15 CustomerID as Kod,
  CompanyName		as [Firma Adý],
  ContactName		as 'Yetkili Kiþi',
  City				as Þehir,
  Country			as Ülke 
  from customers order by City 








