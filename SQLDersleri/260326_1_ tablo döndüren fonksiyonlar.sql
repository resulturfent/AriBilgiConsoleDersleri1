--******************
-- 26 Mart 2026 SQL dersleri
--************************************
--Function=> tablo döndüren fonksiyonlar

go
create function fnc_Carp(@sayi1 int,@sayi2 int)
returns int
as
begin
--kodlar
return @sayi1*@sayi2
end
go

select * from Randevular

select dbo.fnc_Carp(5,6)

select  dbo.fnc_Carp(DoktorId,HastaId),DoktorId,HastaId, tarih,Saat,GeldiMi from Randevular
--tablo döndüren fonksiyonlar
select *from Hastalar

go
create function fnc_Hastalar(@cinsiyet nvarchar(10))
returns table
as
return  ( select *from Hastalar where Cinsiyet like '%'+@cinsiyet+'%')
go
--table function kullanýmý

select *from dbo.fnc_Hastalar('er')
select *from dbo.fnc_Hastalar('kadin')

--KBB bölümüne randevu alan hasta,doktor, randevu bilgilerini listeleyiniz
select *from Randevular
select *from Doktorlar
select *from Branslar
--****************************************************
declare  @brans nvarchar(20)='Dahiliye'
select 
 h.Adi,h.Soyadi,r.tarih,r.Saat,d.Adi,d.Soyadi,b.Adi
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
inner join Branslar as b on b.Id=d.BransId
inner join Hastalar as h on h.Id=r.HastaId
where b.Adi  like '%'+@brans+'%'


go
create function fnc_BransaGoreRandevuAra( @brans nvarchar(20))
returns table
as

return (select 
 h.Adi as 'HastaAdi',h.Soyadi as 'HastaSoyadi',r.tarih,r.Saat,d.Adi as 'DoktorAdi',d.Soyadi as'DottorSoyadi',b.Adi as 'BrasAdi'
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
inner join Branslar as b on b.Id=d.BransId
inner join Hastalar as h on h.Id=r.HastaId
where b.Adi  like '%'+@brans+'%')
go
select *from Branslar
select *from fnc_BransaGoreRandevuAra('dah')
select *from fnc_BransaGoreRandevuAra('orto')
select *from fnc_BransaGoreRandevuAra('d')
--hasta adýna göre arama yapan, bulunan hastalarýn kaç randevusu olduðunu hasta bilgisi, randevu bilgisi veren fnc_HastaRandevulari adýnda function ile kodlayýnýz

select *from Hastalar
select *from Randevular

select 
h.Adi,h.Soyadi,r.tarih,r.Saat
from Hastalar as h
join Randevular as r on r.HastaId=h.Id
where h.Adi like '%'++'%'

go
create function fnc_HastaRandevulari(@hastaAdi nvarchar(250))
returns table
as
return(
select 
h.Adi,h.Soyadi,r.tarih,r.Saat
from Hastalar as h
join Randevular as r on r.HastaId=h.Id
where h.Adi like '%'+@hastaAdi+'%'
)
go
select *from dbo.fnc_HastaRandevulari('a') 
select *from dbo.fnc_HastaRandevulari('a') where adi='Ahmet'
