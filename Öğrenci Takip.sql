
create database OgrenciTakip

use OgrenciTakip

create table tblSinif(
ID int primary key identity(1,1),
SinifAd nvarchar(20),
)

insert into tblSinif(SinifAd)
values('9/A'),
('9/B'),
('9/C'),
('10/A'),
('10/B'),
('10/C'),
('11/A'),
('11/B'),
('11/C'),
('12/A'),
('12/B'),
('12/C')

select * from tblSinif

--delete from tblSinif
--where ID between 13 and 48