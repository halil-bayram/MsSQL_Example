--1.soru
declare @fiyat� float
set @fiyat�=(select u.BirimFiyati from Urunler u where UrunID=1)
declare @ortalama float
set @ortalama=(select avg(u.BirimFiyati) from Urunler u)
if(@fiyat�>@ortalama)
	begin
		print convert(varchar(20),@fiyat�)+' Ortlama alt�ndad�r.'
	end
else
	begin
		print convert(varchar(20),@fiyat�)+' Ortlama �st�ndedir.'
	end

--2.soru
declare @adet int
--exists kay�t varm� yokmu diye kontrol ediyor.
if exists(select * from Personeller)
	begin
		select @adet=COUNT(u.UrunID) from Urunler u
		print convert(varchar(20),@adet)+' Tane Kay�t vard�r'
	end
else
	begin
		print'Kay�t Yoktur'
	end

--3.soru
select * from Urunler u where u.BirimFiyati not in(
select min(u.BirimFiyati) from Urunler u  group by u.KategoriID)

--4.soru
