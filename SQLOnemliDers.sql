create view vwT�mBilgiler
as
select m.Ad+' '+m.Soyad    'M��teri Ad Soyad' 
,r.SatisTarihi             'Re�ete Tarihi'
,rd.Fiyat                  'Recete Fiyat�'
,rd.Adet                   'Recete Adet '
,i.IlacAd                  '�lac�n Ad�'
,d.Ad                      'Doktor Ad�'
,d.Soyad                   'Doktor Soyad�' 
,k.KurumAd                 'Kurumun Ad�' 
,ik.KatogoriAd             'Kategori Ad�'
,f.FirmaAd                 'Firman�n Ad�'

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


--�laclar� en ucuzdan en pahal�ya ilaclar� diz
--�laclar� � deposundan al�nan ila�lar olsun
--Ve Kategoriside A�r� keseci Olanlar Olsun 
--Sonunda ilacK,ilac�nAd, Fiyat� ve Hangi Firmadan Al�nd���n� yap
select i.IlacAd'�lac�n Ad�'
,ik.KatogoriAd '�lac�n Kategori Ad�'
,rd.Fiyat      '�lac�n Fiyat�' 
,f.FirmaAd     '�lac�n Firma Ad�'
,r.SatisTarihi '�lac�n Sat�� Tarihi'
from Ilaclar i 
join IlaCKatagorileri ik on ik.ID=i.KatogoriID
join Firmalar f          on f.ID=i.FirmaID
join ReceteDetaylari rd  on rd.IlacID=f.ID
join Receteler r         on rd.ID=r.DoktorID
where f.FirmaAd like '�%'
order by rd.Fiyat desc
