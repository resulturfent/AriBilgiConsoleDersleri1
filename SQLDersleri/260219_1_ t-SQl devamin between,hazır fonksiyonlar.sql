 /*
 Operatörler
 <,>,<=,>=,!=,=,+,-,*,/,%=> c# ta olduðu gibi kullanýlýr
 Devam
 and,or=> and (&&)ve or(||) c# taki yapýlar ile ayný þekilde kullanýlýr 
 is nul,is not null=>??
 in, between =>??
 like
 */
 use Northwind
 /*
 ||=> or
  true or True=True
  true or False=True
  False or True=True
  False or False=False

 &&=> and
 True and True= True
 True and False= False
 False and True= False
 False and False= False
 */

 select *from Customers where Country='Germany' and City='Berlin'
 select *from Customers where Country='Germany' or Country='Mexico' or City='Sao Paulo'
 --birden fazla or yerine in kullanýlýr
 select *from Customers where Country in ('Germany' ,'Mexico' ,'Sao Paulo')--in içerenleri getirir
  select *from Customers where Country not in ('Germany' ,'Mexico' ,'Brazil')--not in olmayanlarý getirir
  --is null, is not null
  --null => boþ
  --' ' => boþ ama klavyeden space tuþu ile boþluk verilmiþ
  --'' => boþ
  --null
  select *from Customers where Region=''
  select *from Customers where Region is null--nul olanlarý getirir. Doðal olarak SQL ilk data eklenirken müdahale edilmeyen data null olarak gelir
  select *from Customers where Region is not null
  --between=> aralýk filtrelemek için kullanýlýr
  select *from Products
   select *from Products where UnitsInStock>10 and UnitsInStock<15--3
   select *from Products where UnitsInStock>=10 and UnitsInStock<=15--9
   select *from Products where UnitsInStock between 10 and 15--10 ve 15 dahil ederek aralýk vermektedir
   --TR gün-Ay-Yýl=> SQl içinde bu þekilde tarih için sorgulanma yapýlmaz
   select *from Orders where OrderDate>='01.01.1996' and OrderDate<='12.31.1996'--ingiliz tarih formatý göreay-gün-yýl olarak verilmesi gereklidir
    select *from Orders where OrderDate between '01.01.1996' and '12.31.1996'
--*************************************************************
--like => arama yapmak için kullanýlýr
select *from customers where ContactName like 'Maria'--like ile beraber mutlaka %iþareti kullanýlmalýdýr aksi halde eþittir (=) gibi çalýþýr
select *from customers where ContactName = 'Maria'--like ile % iþareti olmadan ayný anlama gelir
select*from Customers where ContactName like '%Maria%'--% iþareti hem baþ hem sonda olarak verildiðinde Maria geçen cümlenin ortasý, sonu, baþý yani neresinde Maria geçiyorsa getirir

select*from Customers where ContactName like 'Mar%'--ilk 3 harfi mar olan ContactName datalarý getirir
select *from Orders
--1996 yýlýnda olan sipariþleri like ile getirin
select *from Orders where OrderDate like '%1996%'
--% iþareti baþta ise
select*from Customers where ContactName like '%Mar'--son 3 harfi Mar/MAR/mAR/ olanlarý getirir
--arama içinde _ kullanýlmasý
select *from  products where ProductName like 'c_a%'--her bir alt tire bir bilinmeyen karaktere denk gelir
--_ tire ayný zamanda karakter için zorunluluk getirir yani _ varsa orda kesin karalter gelecektir
select *from Products where  ProductName like '_o_to%'--1. harfi bilinmeyen, 2. harfi o olan,3. harfi bilinmeyen,4. ve 5. harfi to olan ve sonu ne bittiði önemsiz olan datalarý listeler
--like için soru çözümü yapýlacak
--devam konular
--Hazýr fonksiyonlar
--group by, having
--distinct






