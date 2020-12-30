--1.soru
select * from Urunler u where u.BirimFiyati IN(
select min(u.BirimFiyati) from Urunler u group by u.KategoriID)
--2.soru
select * from Urunler u where u.BirimFiyati >all(
select avg(u.BirimFiyati) from Urunler u group by u.TedarikciID)
--3.soru
select * from [Satis Detaylari] sd where sd.Miktar>any(
select sum(sd.Miktar) from Satislar s inner join [Satis Detaylari] sd on s.SatisID=sd.SatisID 
group by s.SatisID)
--4.soru
update Urunler set BirimFiyati=BirimFiyati*1.02 where UrunID in(
select u.UrunID from Urunler u inner join [Satis Detaylari] sd on sd.UrunID=u.UrunID 
inner join Satislar s on s.SatisID=sd.SatisID 
where year(s.SatisTarihi)=1997 and month(s.SatisTarihi)=4 )