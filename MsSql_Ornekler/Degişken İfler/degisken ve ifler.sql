declare @ad varchar(30)
set @ad='halil'
print 'Ad�n�z:'+@ad

--urunler tablosunda eny�ksek fiyata sahip olan urun
declare @fiyat float
--set @fiyat=(select max(u.BirimFiyati) from Urunler u)
select @fiyat=max(u.BirimFiyati) from Urunler u
print @fiyat
--en y�ksek fiyat ile end���k fiyat aras�ndaki fark
declare @maxfiyat float,@minfiyat float,@fark float
set @maxfiyat=(select max(u.BirimFiyati) from Urunler u)
select @minfiyat=min(u.BirimFiyati) from Urunler u
set @fark=@maxfiyat-@minfiyat
print '('+convert(varchar(10),@maxfiyat)+')-('+convert(varchar(10),@minfiyat)+')='+convert(varchar(10),@fark)
--kay�t varm� yok kontrol�
declare @adet int
--exists kay�t varm� yokmu diye kontrol ediyor.
if exists(select * from Personeller)
	begin
		select @adet=COUNT(u.UrunID) from Urunler u
		print convert(varchar(20),@adet)+'Kay�t vard�r'
	end
else
	begin
		print'Kay�t Yoktur'
	end