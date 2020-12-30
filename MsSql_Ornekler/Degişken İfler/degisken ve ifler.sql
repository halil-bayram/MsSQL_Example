declare @ad varchar(30)
set @ad='halil'
print 'Adýnýz:'+@ad

--urunler tablosunda enyüksek fiyata sahip olan urun
declare @fiyat float
--set @fiyat=(select max(u.BirimFiyati) from Urunler u)
select @fiyat=max(u.BirimFiyati) from Urunler u
print @fiyat
--en yüksek fiyat ile endüþük fiyat arasýndaki fark
declare @maxfiyat float,@minfiyat float,@fark float
set @maxfiyat=(select max(u.BirimFiyati) from Urunler u)
select @minfiyat=min(u.BirimFiyati) from Urunler u
set @fark=@maxfiyat-@minfiyat
print '('+convert(varchar(10),@maxfiyat)+')-('+convert(varchar(10),@minfiyat)+')='+convert(varchar(10),@fark)
--kayýt varmý yok kontrolü
declare @adet int
--exists kayýt varmý yokmu diye kontrol ediyor.
if exists(select * from Personeller)
	begin
		select @adet=COUNT(u.UrunID) from Urunler u
		print convert(varchar(20),@adet)+'Kayýt vardýr'
	end
else
	begin
		print'Kayýt Yoktur'
	end