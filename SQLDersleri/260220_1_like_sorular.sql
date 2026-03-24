--DERS
---20 Þubat Cuma 2026 
--like sorular
use NorthwindDB
select *from Customers
--baþta %,sonda %,_ iþareti ile karakter sayýmý
--Ülkesi içinde swe olan ve þehri için br geçen müþterileri listeleyiniz
select *from Customers where Country like '%swe%' and City like '%br%'
select *from Products

--Ürün adý içinde 3.harfi i ve 4. harfi c olan ve stok deðerleri 0(dahil)-10(dahil)  arasýnda olanlarý Name, Stok, Price kolonlarýný TR yaparak ürünleri listeleyiniz
select 
ProductName 'Ürün Adý',
UnitsInStock Stok,
UnitPrice Fiyat
from Products where ProductName like '__ic%' and UnitsInStock>=0 and UnitsInStock<=10
--aralýk için between kullanalým
select 
ProductName 'Ürün Adý',
UnitsInStock Stok,
UnitPrice Fiyat
from Products where ProductName like '__ic%' and UnitsInStock between 0 and 10
-------------------------------------------------
--Genel Tekrar sorularý
--Aliases, kolon adý,select, from, Tablo adý, where(koþul kelimesi), Operatörler(<,>,<=,>=,!=,<>(Eþit deðildir),=,between,and,or,in,not in, is null,is not null, order by (sýralama),like (% yeri, _ konumu))
--ürün fiyatlarý 15-25 arasýnda olan ürünleri fiyatýna göre küçükten büyüðe doðru Ad,Stok, FÝyat , Birim Tanýmý (QuantityPerUnit) þeklinde listeleyiniz?
--
--1)ürün fiyatlarý 15-25 arasýnda olan -OK
--2)ürünleri fiyatýna göre küçükten büyüðe doðru-OK
--3)Ad,Stok, FÝyat , Birim Tanýmý (QuantityPerUnit) -
--þeklinde listeleyiniz?
select 
ProductName as Ad,
UnitsInStock as 'Stok',
UnitPrice 'Birim Fiyat',
QuantityPerUnit [Birim Tanýmý]
--from Products where UnitPrice >=15 and UnitPrice<=25 order by UnitPrice --asc default atar
--operatör yerine between kullanalým
from Products where UnitPrice between 15 and 25 order by UnitPrice --asc default atar
select*from Products
--ürün stoklarý 100 üzerinde olan ürünleri , ürün isimlerine göre  a'dan z'ye sýralayýnýz?
--Ad,Birim Fiyat, Stok, Birim Tanýmý , Üretimdemi(Discontinued)

select 
ProductName as Ad,
UnitPrice  as'Birim Fiyat',
UnitsInStock as Stok,
QuantityPerUnit as [Birim Tanýmý],
Discontinued Üretimdemi
from Products where UnitsInStock>100 order by ProductName
----------------------------------------------------------------------------
--top kullanýmý
select *from Products order by UnitPrice--ürünler fiyata göre küçükten büyüðe doðru sýralar
select *from Products order by UnitsInStock--
select *from Orders order by Freight --
--Orders Sipariþler, freight kargo bedeli

select *from Customers order by CompanyName-- a-z
select *from Products --ürünleri listeler
order by UnitPrice --fiyatý küçükten büyüðe doðru
--en düþük fiyta sahip olan ilk 5 ürün
select top 5 *from Products --ürünleri listeler
order by UnitPrice --fiyatý küçükten büyüðe doðru

--en yüksek fiyata sahip 5 ürün
select top 5  *from Products --ürünleri listeler
order by UnitPrice desc--fiyatý  büyükten küçüðe doðru
--en genç 3 personelin adý,soyadý, Doðum Tarihi,address,Þehir ve ülkesini gösterini
select 
top 3 
FirstName Adý,
LastName Soyadý,
BirthDate 'Doðum Tarihi',
Address as Adres,
City Þehir,
Country Ülke
from Employees order by BirthDate desc
/*
Console Ödevi
Onur	=> %90-95
Yaðýz	=>%90-95
Ahmet	=>%85-90
*/



