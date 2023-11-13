create view vwTümBilgiler
as
select m.Ad+' '+m.Soyad    'Müþteri Ad Soyad' 
,r.SatisTarihi             'Reçete Tarihi'
,rd.Fiyat                  'Recete Fiyatý'
,rd.Adet                   'Recete Adet '
,i.IlacAd                  'Ýlacýn Adý'
,d.Ad                      'Doktor Adý'
,d.Soyad                   'Doktor Soyadý' 
,k.KurumAd                 'Kurumun Adý' 
,ik.KatogoriAd             'Kategori Adý'
,f.FirmaAd                 'Firmanýn Adý'

from Receteler r 
join Musteriler m        on m.ID=r.MusteriID
join ReceteDetaylari rd  on r.ID=rd.ReceteID
join Ilaclar i           on i.ID=rd.IlacID
join Doktorlar d         on d.ID=r.DoktorID  
join Kurumlar k          on k.ID=d.KurumID
join IlaCKatagorileri ik on ik.ID=i.KatogoriID
join Firmalar f          on f.ID=i.FirmaID

where r.SatisTarihi between '2011-07-01' and  '2011-12-31 '
--order by rd.Fiyat desc


select dr.Ad ,i.IlacAd,r.SatisTarihi,rd.Fiyat,f.FirmaAd

from Doktorlar dr
join Receteler r         on dr.ID=r.DoktorID
join ReceteDetaylari rd  on dr.ID=rd.ReceteID
join Ilaclar i           on i.ID=rd.IlacID 
join Kurumlar k          on k.ID=dr.KurumID
join IlaCKatagorileri ik on ik.ID=i.KatogoriID
join Firmalar f          on f.ID=i.FirmaID


--Ýlaclarý en ucuzdan en pahalýya ilaclarý diz
--Ýlaclarý Þ deposundan alýnan ilaçlar olsun
--Ve Kategoriside Aðrý keseci Olanlar Olsun 
--Sonunda ilacK,ilacýnAd, Fiyatý ve Hangi Firmadan Alýndýðýný yap
select i.IlacAd'Ýlacýn Adý'
,ik.KatogoriAd 'Ýlacýn Kategori Adý'
,rd.Fiyat      'Ýlacýn Fiyatý' 
,f.FirmaAd     'Ýlacýn Firma Adý'
,r.SatisTarihi 'Ýlacýn Satýþ Tarihi'
from Ilaclar i 
join IlaCKatagorileri ik on ik.ID=i.KatogoriID
join Firmalar f          on f.ID=i.FirmaID
join ReceteDetaylari rd  on rd.IlacID=f.ID
join Receteler r         on rd.ID=r.DoktorID
where f.FirmaAd like 'þ%'
order by rd.Fiyat desc
