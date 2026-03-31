---*******************************
--27 Mart 2026 SQL Dersleri
--****************************************
--SP ile CRUD iþlemleri
--SP ile Insert, Update, Delete iþlemlerinin yapýlmasý
use hastahanedb

select *from doktorlar
select *from branslar

insert into Branslar (Adi,Aciklama)  values ('Göz','Uzmanlý alanda hizmet verir')

go
create proc sp_Brans_Ekle
(
@adi nvarchar(250),
@aciklama nvarchar(max)
)
as
begin
insert into Branslar (Adi,Aciklama)  values (@adi,@aciklama)
end
go
execute dbo.sp_Brans_Ekle 'Göz','test1'
select *from branslar

--ayný data insert edilmesini engellemek için aþaðýdaki iþlemi SP ye alter yaparak uygulayalým
go
alter proc sp_Brans_Ekle
(
@adi nvarchar(250),
@aciklama nvarchar(max)
)
as
begin

 declare @dataSayisi int =(select COUNT(Id) from Branslar where Adi=@adi)
if(@dataSayisi>1)
	begin--{
	 print 'Bu data  DB de mevcut'
	end--}
else
	begin--{
	insert into Branslar (Adi,Aciklama)  values (@adi,@aciklama)
	end--}
end
go
--Update ile sp 
go
create proc sp_Brans_Update
(
@id int,
@adi nvarchar(250),
@aciklama nvarchar(max)
)
as
begin
 declare @dataSayisi int =(select COUNT(Id) from Branslar where Adi=@adi)
if(@dataSayisi>0)
	begin--{
	 print 'Bu data  DB de mevcut'
	end--}
else
	begin--{
	update  Branslar set Adi=@adi,Aciklama=@aciklama where Id=@id
	end--}
end
go
select *from Branslar
exec sp_Brans_Update 5,'Fizik Tedavi-3','teknisyen fizyoterapist bakmaktadýr'

go
alter proc sp_Brans_Update
(
@id int,
@adi nvarchar(250),
@aciklama nvarchar(max)
)
as
begin
-- declare @dataSayisi int =(select COUNT(Id) from Branslar where Adi=@adi)
--Exists => data varsa true, yoksa false verir
if(Exists(select * from Branslar where Adi=@adi ))
	begin--{
	 print 'Bu data  DB de mevcut'
	end--}
else
	begin--{
	--iç içe if-else bloklarý SQL içinde kullanýlýr
		 if(Exists(select * from Branslar where Id=@id))
		  begin
		  update  Branslar set Adi=@adi,Aciklama=@aciklama where Id=@id
		   end
		   else
		   begin
		   print 'Bu Id deðerinde bir Brans yok'
		   end
	end--}
end
go
exec sp_Brans_Update 69,'Fizik Tedavi-5','teknisyen fizyoterapist bakmaktadýr'

--CRUD konusunda yapýlan ödevler için sp yapýlacak
/*
--30 tane Randevular, diðer tablolar için 10'er tane data SP yapýlarak eklenecek
Koþul-1) her tablo için SP update iþlemi de yapýlacak
Koþul-2) tekrarlý data eklemesi engellenecek(Insert-Update için ayrý ayrý yapýlacak)
*/
