use HastahaneDB

------------------------
--DDL=> Data DEfinition Language yapýsý create, alteri drop ile tablo iþlemleri yapmaktýr
--tabloyu create ile yapmak
go
create table Deneme
(
Id int Identity(1,1) not null,
Adi nvarchar(250) not null,
Soyadi nvarchar(250) not null,
Constraint PK_Deneme Primary Key clustered
(Id asc)
);
go
--olan tabloya kolon eklemek için alter kullanýlýr
alter table Deneme
add Adres nvarchar(Max) null;
--tabloyu komple silmek isterseniz için (db den o isimde tablo kaldýrýlýyor)
drop table Deneme
