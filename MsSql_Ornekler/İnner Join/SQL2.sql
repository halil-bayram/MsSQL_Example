use Northwind
--1.sorgu
select u.UrunAdi,u.UrunID,t.SirketAdi from Urunler u inner join Tedarikciler t on u.TedarikciID=t.TedarikciID
--2.sorgu
select u.UrunID,u.UrunAdi,t.SirketAdi from Urunler u inner join Tedarikciler t on u.TedarikciID=t.TedarikciID where u.TedarikciID between 10 and 20
--3.sorgu
select u.UrunID,u.UrunAdi,t.SirketAdi from Urunler u inner join Tedarikciler t on u.TedarikciID=t.TedarikciID where t.SirketAdi='Exotic Liquids'
--4.sorgu
select COUNT(u.UrunID),t.SirketAdi from Tedarikciler t inner join Urunler u on u.TedarikciID=t.TedarikciID group by u.TedarikciID,t.SirketAdi having  COUNT(u.UrunID)>3 order by COUNT(u.UrunID) asc
--5.sorgu
select COUNT(u.UrunID),k.KategoriAdi from Urunler u inner join Kategoriler k on u.KategoriID=k.KategoriID group by u.KategoriID,k.KategoriAdi
--6.sorgu