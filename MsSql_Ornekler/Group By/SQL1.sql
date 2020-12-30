use Northwind

--18.sorgu
select COUNT(u.UrunID)as 'ürün sayýsý',u.KategoriID from Urunler u group by u.KategoriID
--19.sorgu
select COUNT(u.UrunID) from Urunler u where u.UrunAdi like '[a-k]%' group by u.KategoriID
--20.sorgu
select AVG(u.BirimFiyati) from Urunler u where u.KategoriID<3 group by u.KategoriID
--21.sorgu
select MAX(u.HedefStokDuzeyi),u.TedarikciID from Urunler u where u.TedarikciID In(1,3,5) group by u.TedarikciID
--22.sorgu
select MIN(u.BirimFiyati) from Urunler u where u.BirimFiyati<25 group by u.KategoriID
--23.sorgu
select SUM(u.BirimFiyati),u.TedarikciID from Urunler u where u.UrunAdi Like 'c%' and u.TedarikciID between 2 and 7 group by u.TedarikciID
--24.sorgu
select COUNT(m.MusteriID),m.Ulke from Musteriler m where m.Sehir IN('Berlin','London','Madrid','Strasbourg','Mexico','D.F.') and m.MusteriUnvani Like '%Manager%' group by m.Ulke
--25.sorgu
select MAX(u.BirimFiyati),u.UrunID from [Satis Detaylari] u where u.Miktar>35 group by u.UrunID
--26.sorgu
select SUM(u.Miktar),u.UrunID from [Satis Detaylari] u where u.UrunID>10 group by u.UrunID
--27.sorgu
select SUM(u.Miktar) as 'ürün miktarý toplam',u.UrunID from [Satis Detaylari] u where u.UrunID>10 group by u.UrunID order by SUM(u.Miktar) desc
--28.sorgu
select SUM(u.Ýndirim) as 'toplam indirim Oraný',u.UrunID from [Satis Detaylari] u where u.BirimFiyati<10 group by u.UrunID
--29.sorgu
select SUM(u.Ýndirim) as 'toplam indirim Oraný',u.UrunID from [Satis Detaylari] u where u.BirimFiyati<10 group by u.UrunID order by SUM(u.Ýndirim) desc
