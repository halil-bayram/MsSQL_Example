--1
select * from Urunler u where u.BirimFiyati=(
select MAX(u.BirimFiyati) from Urunler u)
--2
select * from Urunler u where u.BirimFiyati>(
select u.BirimFiyati from Urunler u where u.UrunAdi='Chang')
--3
select * from Musteriler m where m.MusteriUnvani=(
select m.MusteriUnvani from Musteriler m where m.MusteriAdi='Thomas Hardy')
and m.Sehir=(
select m.Sehir from Musteriler m where m.MusteriAdi='Elizabeth Brown')
--4
select * from Musteriler m where Len(m.MusteriAdi)=(
select MAX(LEN(m.MusteriAdi)) from Musteriler m)
--5
select p.Adi,DATEDIFF(YEAR,p.DogumTarihi,GETDATE()) from Personeller p where p.DogumTarihi=(
select MAX(p.DogumTarihi) from Personeller p)
--6
select * from Personeller p where p.Unvan<>(
select p.Unvan from Personeller p where p.DogumTarihi=(
select MAX(p.DogumTarihi) from Personeller p)) 
--7   
--8
select * from Urunler u where u.BirimFiyati<(
select AVG(u.BirimFiyati) from Kategoriler k inner join Urunler u on u.KategoriID=k.KategoriID where k.KategoriAdi='Condiments')
--10
select * from Urunler u where u.BirimFiyati>all(
select min(u.BirimFiyati) from Urunler u where u.KategoriID between 3 and 7 group by u.KategoriID)
--11
select * from Urunler u where u.BirimFiyati<all(
select MAX(u.BirimFiyati) from Urunler u where u.KategoriID between 3 and 7 group by u.KategoriID)
--12
select * from Urunler u where u.BirimFiyati>any(
select min(u.BirimFiyati) from Urunler u where u.KategoriID between 3 and 7 group by u.KategoriID)
--13
select * from Urunler u where u.BirimFiyati<any(
select MAX(u.BirimFiyati) from Urunler u where u.KategoriID between 3 and 7 group by u.KategoriID)