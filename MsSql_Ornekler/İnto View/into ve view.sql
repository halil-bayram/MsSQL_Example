--into yedekleme
select * into YedekPersonel from Personeller

select u.UrunAdi,u.BirimFiyati,u.BirimdekiMiktar,u.Sonlandi 
into YedekUrunler from Urunler u where u.UrunAdi like '[a-k]'

select * from YedekUrunler drop table YedekPersonel

--view oluþturma

--sehirleri berlin olanlarý getiriyor.
go
create view viewMusteri
as
select * from Musteriler m where m.Sehir='Berlin'

select * from viewMusteri
--view siliyoruz
drop view viewMusteri
--view içindeki þehirleri degiþtiriyor
alter view viewMusteri
as
select * from Musteriler m where m.Sehir like '[a-k]'
go