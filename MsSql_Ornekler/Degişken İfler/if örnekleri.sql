--1.soru
declare @fiyatý float
set @fiyatý=(select u.BirimFiyati from Urunler u where UrunID=1)
declare @ortalama float
set @ortalama=(select avg(u.BirimFiyati) from Urunler u)
if(@fiyatý>@ortalama)
	begin
		print convert(varchar(20),@fiyatý)+' Ortlama altýndadýr.'
	end
else
	begin
		print convert(varchar(20),@fiyatý)+' Ortlama Üstündedir.'
	end

--2.soru
declare @adet int
--exists kayýt varmý yokmu diye kontrol ediyor.
if exists(select * from Personeller)
	begin
		select @adet=COUNT(u.UrunID) from Urunler u
		print convert(varchar(20),@adet)+' Tane Kayýt vardýr'
	end
else
	begin
		print'Kayýt Yoktur'
	end

--3.soru
select * from Urunler u where u.BirimFiyati not in(
select min(u.BirimFiyati) from Urunler u  group by u.KategoriID)

--4.soru
