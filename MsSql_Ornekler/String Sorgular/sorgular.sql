use Northwind

--1
select * from Personeller where UnvanEki='Mr.' and Sehir='London'

--2
select * from Personeller where Adi like 'a%'

--3
select * from Personeller where Adi like '%k%'

--4
select * from Personeller where Adi like '[^k]%'

--5
select * from Urunler where UrunAdi like '[^c]%' and  BirimFiyati between 25 and 50

--6
select * from Urunler where TedarikciID>6 and Sonlandi=1

--7
select * from Musteriler where MusteriID like '[^a-f]%' and Sehir IN('Germany','Spain','USA','Ireland')

--8
select * from Musteriler where Sehir IN('Leipzig','Anchorage','Paris','Köln') and MusteriUnvani like '%sales%'

--9
select * from Musteriler where Bolge is null and MusteriID like '[fgm]%' order by MusteriID

--10
select * from Personeller order by Unvan,Adi desc

--11
select top 5 * from Urunler order by BirimFiyati desc

--12
select distinct Sehir from Musteriler

--13
select COUNT(u.Adi) from Personeller u

--14
select SUM(u.HedefStokDuzeyi) from Urunler u

--15
select AVG(u.BirimFiyati) from Urunler u

--16
select AVG(u.BirimFiyati) from Urunler u where UrunAdi like 'c%'

--17
select MIN(u.BirimFiyati) from Urunler u
