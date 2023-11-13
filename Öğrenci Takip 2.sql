
create database OgrenciTakip

use OgrenciTakip

create table tblSinif(
ID int primary key identity(1,1),
SinifAd nvarchar(20),
)
insert into tblSinif(SinifAd)
values('9/A'),
('9/B'),('9/C'),
('10/A'),('10/B'),
('10/C'),('11/A'),
('11/B'),('11/C'),
('12/A'),('12/B'),
('12/C')

select * from tblSinif

create table tblIl(
ID int primary key identity(1,1),
ilAd nvarchar(30),
)
insert into tblIl(ilAd)
values('Konya'),('Adýyaman'),('Mersin'),
('Afyon'),('Mardin'),('Gümüþhane'),('Muþ'),
('Þanlýurfa'),('Bayburt'),('Van')

select * from tblIl


create table tblVeli(
ID int primary key identity(1,1),
AdSoyad nvarchar(20),
Tel varchar(20),
EPosta nvarchar(256),
Adres nvarchar(256),
ilID int references tblIl(ID),
YakinlikDurumu nvarchar(50)
)
insert into tblVeli(AdSoyad,Tel,EPosta,Adres,ilID,YakinlikDurumu)
values('Aslý Dere','345 456 56 78','Asli@hotmail.com','Nalçacý','1','Anne'),
('Can Cimri','245 645 76 89','Can@hotmail.com','Muhacir','2','Baba'),
('Sefer Günbakan','243 675 87 45','Sefer@hotmail.com','Anýt Çevresi','3','Dede'),
('Makbule Seçer','526 678 34 21','Secer@hotmail.com','Cumhuriyet Cad.','4','Teyze'),
('Kader Cani','243 354 76 23','KaderCani@hotmail.com','Ahmet Özcan Cad.','5','Kuzen'),
('Meral Uzun','235 546 23 78','Uzun@hotmail.com','Muhacir','6','Anne'),
('Cafer Kazýk','245 678 98 76','KazýkAt@hotmail.com','Lalebahçe','7','Baba'),
('Adem Yalan','243 876 98 67','Yalan@hotmail.com','Cumhuriyet Cad.','8','Baba'),
('Zerrin Tepe','245 765 87 45','Tepeler@hotmail.com','Lalebahçe','9','Teyze'),
('Murat Düzenat','345 675 87 90','DüzenAt@hotmail.com','Ahmet Özcan Cad.','10','Dayý')

select * from tblVeli
--delete from tblVeli
--where ID between 11 and 20

create table tblDers(
ID int primary key identity(1,1),
DersAd nvarchar(50),
)
insert into tblDers(DersAd)
values('NTP'),('Veri Tabaný'),('Fizik'),('Felsefe'),('Geometri'),
('Matematik'),('Ýnkilap'),('Ýngilizce'),('Din K.'),('Dil Anlatým'),('Türk Edebiyatý'),('Beden E.')
select * from tblDers

create table tblOgrenci(
ID int primary key identity(1,1),
OkulNo nvarchar(50),
Ad nvarchar(20),
Soyad nvarchar(20),
SinifID int references tblSinif(ID),
VeliID int references tblVeli(ID),
Tel varchar(20),
EPosta nvarchar(256),
Adres nvarchar(256),
ilID int references tblIl(ID),
DogumTarihi date,
BursAliyorMu bit
)
--drop table tblOgrenci
insert into tblOgrenci(OkulNo,Ad,Soyad,SinifID,VeliID,Tel,EPosta,Adres,ilID,DogumTarihi,BursAliyorMu)
values('348','Fatma ','Altay','1','1','234 456 34 56','Fatmaltay@hotmail.com','Ahmet Özcan Cad.','1','1996-4-29',1),
('129','Kübra D.','Kahya','2','4','345 456 54 78','Kübra@hotmail.com','Lalebahçe','2','1996-4-12',0),
('293','Ömer F.','Kalaycý','5','3','123 456 76 34','Omar@hotmail.com','Nalçacý','10','1996-12-12',0),
('450','Aynur','Uluþan','3','6','534 765 12 34','Ulusan@hotmail.com','Muhacir','9','1995-10-10',0),
('128','Osman','Pirincçi','2','2','123 456 76 34','Osman@hotmail.com','Cumhuriyet','4','1995-5-28',0),
('23','Beyza','Tunç','5','5','534 765 12 34','Beyza@hotmail.com','Lalebahçe','5','1996-11-3',0),
('43','Yunus','Kök','6','6','345 456 54 78','Yunus@hotmail.com','Muhacir','2','1996-1-21',0),
('127','Haydar','Satýlmaz','7','8','123 456 67 89','Haydar@hotmail.com','Lalebahçe','1','1995-2-10',0),
('238','Sýtký C.','Ejder','8','10','123 456 76 34','Ejder@hotmail.com','Cumhuriyet','6','1996-7-9',0),
('49','Yunus','Kaçar','9','4','213 345 56 67','Kaçar@hotmail.com','Muhacir','7','1996-9-6',0),
('346','Emine','Kamacý','8','9','345 456 54 78','Emine@hotmail.com','Lalebahçe','9','1996-3-2',0),
('440','Hafize','Güngör','3','10','534 765 12 34','Güngör@hotmail.com','Nalçacý','8','1995-9-26',0)

select * from tblOgrenci

create table tblOgrenciDers(
ID int primary key identity(1,1),
OgrenciID int references tblOgrenci(ID),
DersID int references tblDers(ID)
)
--drop table tblOgrenciDers
insert into tblOgrenciDers(OgrenciID,DersID)
values('1','11'),('2','8'),('2','7'),('11','5'),('10','4'),
('3','2'),('1','1'),('6','7'),('8','9'),('1','10'),('4','2'),
('2','6'),('12','7'),('8','2'),('11','10'),('12','8'),('9','10'),
('6','4'),('1','2'),('3','5'),('9','1'),('2','9'),('4','6'),
('5','8'),('9','12'),('7','6'),('4','2'),('11','5'),('3','5')
select * from tblOgrenciDers