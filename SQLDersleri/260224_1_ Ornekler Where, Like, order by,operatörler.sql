
----------------------------------
--24 Þubat 2026 SQL Dersi---------
-----------------------------------
--where, like,order by , operatörler, top 
use OkulDB
--siniflar tablosunu þebelerine göre sýralayýnýz
select *from  Sýnýflar order by SýnýfSubesi
--Kadýn öðrenciler arasýnda en genç olan 5 tanesini gösteriniz
--Ad,soyad,doðum tarihi,TC,Adres,
select *from Ogrenciler

select top 5 
OgrenciAdi,OgrenciSoyadi,DogumTarihi,OgrenciTC,Adres from Ogrenciler 
where  lower( Cinsiyeti)  collate TURKISH_CI_AS= N'kadýn' --I ÝÇÝN SORGU HATA VERÝR, BU YÖNTEM HATAYI GÝDERÝR
order by DogumTarihi desc
--Soyadý içinde d harfi olan  ve TC si olan erkek öðrencileri ad-soyad,adres, doðum tarihi listesini yapýnýz
select *from Ogrenciler
--
select  OgrenciTC, OgrenciAdi,OgrenciSoyadi,Adres,DogumTarihi from Ogrenciler where 
OgrenciSoyadi like '%d%' 
and (OgrenciTC is not null and OgrenciTC !='')
and lower(Cinsiyeti)='erkek'
--Bir okuldaki öðrencilerin babalarýna mesaj atýlacaktýr. Bu mesaj için TC,Telefon numarasý gereklidir. Bu þartlara göre veritabanýndan Veli adý,soyadý, Cinsiyet, TC, telefon  ve adres bilgilerini getiren scripti(SQL kodu) kodlayýnýz?
select *from Ogrenciler
select 
VeliAdi,VeliSoyadi,Cinsiyet,VeliTC,Telefon,Adres
from Veliler where Cinsiyet='erkek' and VeliTC!='' and Telefon!='' and VeliTC is not null and Telefon is not null





