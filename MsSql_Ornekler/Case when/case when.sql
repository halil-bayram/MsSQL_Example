--1
select p.Adi,p.SoyAdi,p.UnvanEki,'A��klama'=
case
	when p.UnvanEki like 'Mr.' then 'Bay'
	when p.UnvanEki  IN('Mrs.','Ms.') then 'Bayan'
	when p.UnvanEki Like 'Dr.' then 'Doktor'
end

from Personeller p
--2
select u.UrunAdi,u.BirimFiyati,'Degerler'=
case
	when u.BirimFiyati between 0 and 10 then 'Ucuz'
	when u.BirimFiyati between 11 and 40 then 'Normal'
	else 'Pahal�'
end
 
from Urunler u order by u.BirimFiyati desc

--3
select p.Adi,p.SoyAdi,'B�lge Bilgisi'=
case
	when p.Bolge is null then 'Girilmemi�'
	else p.Bolge
end

from Personeller p

--4
select u.UrunAdi,Count(s.SatisID),'Y�ld�z Say�s�'=
case
	when Count(s.SatisID)<20 then '*'
	when Count(s.SatisID) between 20 and 30 then '**'
	when Count(s.SatisID) between 30 and 50 then '***'
	else '****'
end
from Satislar s inner join [Satis Detaylari] sd 
on s.SatisID=sd.SatisID inner join Urunler u 
on u.UrunID=sd.UrunID where YEAR(s.SatisTarihi)=1997 group by u.UrunID,u.UrunAdi 
order by 'Y�ld�z Say�s�' desc
--5


