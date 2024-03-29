USE [EczaneTakip]
GO
/****** Object:  Table [IlaCKatagorileri]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IlaCKatagorileri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KatogoriAd] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [IlaCKatagorileri] ON
INSERT [IlaCKatagorileri] ([ID], [KatogoriAd]) VALUES (1, N'Uyuşturucular')
INSERT [IlaCKatagorileri] ([ID], [KatogoriAd]) VALUES (2, N'Ağrı Kesiciler')
INSERT [IlaCKatagorileri] ([ID], [KatogoriAd]) VALUES (3, N'Antibiyotikler')
INSERT [IlaCKatagorileri] ([ID], [KatogoriAd]) VALUES (4, N'İğneler')
INSERT [IlaCKatagorileri] ([ID], [KatogoriAd]) VALUES (5, N'Ateş Düşürücüler')
SET IDENTITY_INSERT [IlaCKatagorileri] OFF
/****** Object:  Table [Firmalar]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Firmalar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirmaAd] [nvarchar](50) NULL,
	[YetkiliKisi] [nvarchar](30) NULL,
	[Tel] [char](11) NULL,
	[Fax] [char](11) NULL,
	[Adres] [nvarchar](300) NULL,
	[Eposta] [nvarchar](40) NULL,
	[WebAdresi] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Firmalar] ON
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (1, N'Şule Ecza Deposu', N'Şule Deniz', N'05514051010', N'0551451011 ', N'Yazır Mah', N'suleeczaa@hotmail.com', N'www.suleeczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (2, N'Hakan Ecza Deposu', N'Hakan Dağ', N'05514051052', N'05514051053', N'Yazır Mah', N'hkneczaa@hotmail.com', N'www.hkneczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (3, N'Yiğit Ecza Deposu', N'Yiğitcan Kılıçtaş', N'05514051079', N'05514051893', N'Çınar Mah', N'ygteczaa@hotmail.com', N'www.ygteczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (4, N'Selçuk Ecza Deposu', N'Selçuk Şahin', N'05515651052', N'05518751053', N'Toprak Mah', N'slceczaa@hotmail.com', N'www.slceczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (5, N'Ali Ecza Deposu', N'Ali Ak', N'05514051072', N'05514051253', N'Sarnıç Mah', N'alieczaa@hotmail.com', N'www.alieczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (6, N'Fulya Ecza Deposu', N'Fulya Sert', N'05364051052', N'05374051053', N'Yeni Mah', N'fulyaeczaa@hotmail.com', N'www.fulyaeczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (7, N'Çınar Ecza Deposu', N'Çınar Sakarya', N'05366574482', N'05377784512', N'Akçeşme Mah', N'cinareczaa@hotmail.com', N'www.cinareczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (8, N'Gül Ecza Deposu', N'Gül Pınar', N'05395896532', N'05373215773', N'Selçuk Mah', N'guleczaa@hotmail.com', N'www.guleczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (9, N'Pınar Ecza Deposu', N'Pınar Akkaya', N'05367614934', N'05398731987', N'Taşlıca Mah', N'pinareczaa@hotmail.com', N'www.pinareczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (10, N'Alp Ecza Deposu', N'Alp Tekin', N'0536617366 ', N'05396543210', N'Sancak Mah', N'alpeczaa@hotmail.com', N'www.alpeczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (11, N'Nur Ecza Deposu', N'Nur Çetin', N'05364567896', N'05378529631', N'Sevinç Mah', N'nureczaa@hotmail.com', N'www.nureczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (12, N'Pelin Ecza Deposu', N'Pelin Akkaş', N'05365913572', N'05398744454', N'Çamlıca Mah', N'pelineczaa@hotmail.com', N'www.pelineczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (13, N'Barış Ecza Deposu', N'Barış Akarsu', N'05363574937', N'05074952113', N'Türkoğlu Mah', N'barıseczaa@hotmail.com', N'www.barıseczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (14, N'Tarık Ecza Deposu', N'Tarık Tekelioğlu', N'05365554466', N'05077878787', N'Tunçbilek Mah', N'tarıkeczaa@hotmail.com', N'www.tarıkeczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (15, N'Yeşim Ecza Deposu', N'Yeşim Çelik', N'05382398135', N'05074440544', N'Şemsiefendi Mah', N'yesimeczaa@hotmail.com', N'www.yesimeczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (16, N'Nil Ecza Deposu', N'Nil Tuana', N'05365566622', N'05076625874', N'Akasya Mah', N'nileczaa@hotmail.com', N'www.nileczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (17, N'Alp Ecza Deposu', N'Alp Ertekin', N'05369638520', N'05077410852', N'Hicret Mah', N'alpeczaa@hotmail.com', N'www.alpeczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (18, N'Mert Ecza Deposu', N'Mert Yılmaz', N'05363574999', N'05074952999', N'Hüzün Mah', N'merteczaa@hotmail.com', N'www.merteczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (19, N'Fatih Ecza Deposu', N'Fatih Türkmen', N'05363571515', N'05074951515', N'Akkondu Mah', N'fatiheczaa@hotmail.com', N'www.fatiheczaa.com')
INSERT [Firmalar] ([ID], [FirmaAd], [YetkiliKisi], [Tel], [Fax], [Adres], [Eposta], [WebAdresi]) VALUES (20, N'Bora Ecza Deposu', N'Bora Duman', N'05363578585', N'05074958989', N'Tepecik Mah', N'boraeczaa@hotmail.com', N'www.boraeczaa.com')
SET IDENTITY_INSERT [Firmalar] OFF
/****** Object:  Table [Musteriler]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Musteriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](30) NULL,
	[Soyad] [nvarchar](30) NULL,
	[Adres] [nvarchar](300) NULL,
	[Tel] [char](11) NULL,
	[TCKimlikNo] [char](11) NULL,
	[Cinsiyet] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Musteriler] ON
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (1, N'Hakan', N'Dağ', N'Yazır Mah', N'05514051052', N'57199574782', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (2, N'Şule', N'Dağ', N'Yazır Mah', N'05514051053', N'57199574783', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (3, N'Alime', N'Alkış', N'Yazır Mah', N'05514051058', N'57199574789', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (4, N'Fatma', N'Alkış', N'Yazır Mah', N'05514051059', N'57199574770', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (5, N'Veli', N'Can', N'Kerkük Mah', N'05014051058', N'57199574750', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (6, N'Havva', N'Can', N'Kerkük Mah', N'05014051057', N'57199574740', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (7, N'Mert', N'Yıldırım', N'Kemalpaşa Mah', N'05014091058', N'58599574750', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (8, N'Perihan', N'Yıldırım', N'Kemalpaşa Mah', N'05014091059', N'58599574752', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (9, N'Hüsnü', N'Çoban', N'Paşa Mah', N'05014091559', N'58599575588', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (10, N'Suat', N'Çoban', N'Paşa Mah', N'05014091560', N'58599575589', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (11, N'Soner', N'Kabadayı', N'Hacı Mah', N'05014455510', N'58599574777', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (12, N'Sevgi', N'Kabadayı', N'Hacı Mah', N'05014455511', N'58599574778', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (13, N'Akın', N'Belikman', N'Hasret Mah', N'05077778555', N'57388596323', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (14, N'Pınar', N'Belikman', N'Hasret Mah', N'05077778556', N'57388596324', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (15, N'Tuna', N'Alp', N'Selçuklu Mah', N'05077778888', N'57388598888', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (16, N'Perihan', N'Alp', N'Selçuklu Mah', N'05077778889', N'57388598889', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (17, N'Sefa', N'Öge', N'Topraksarnıç Mah', N'05077775565', N'57388595656', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (18, N'Nüket', N'Öge', N'Topraksarnıç Mah', N'05077775566', N'57388595657', N'K')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (19, N'Barış', N'Akarsu', N'Amasra Mah', N'05077775577', N'57388595678', N'E')
INSERT [Musteriler] ([ID], [Ad], [Soyad], [Adres], [Tel], [TCKimlikNo], [Cinsiyet]) VALUES (20, N'Merve', N'Akarsu', N'Amasra Mah', N'05077775578', N'57388595679', N'K')
SET IDENTITY_INSERT [Musteriler] OFF
/****** Object:  Table [Kurumlar]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Kurumlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KurumAd] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Kurumlar] ON
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (1, N'Meram Eğitim ve Araştırma Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (2, N'Selçuklu Tıp Fakültesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (3, N'Tıp Fakültesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (4, N'Numune Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (5, N'Anıt Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (6, N'Beyhekim Devlet Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (7, N'Farabi Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (8, N'Furkan Sükan Kadın Doğum Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (9, N'Akademi Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (10, N'Vakıf Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (11, N'Başkent Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (12, N'B.S.K Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (13, N'Belediye Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (14, N'Kızılay Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (15, N'Nakiboğlu Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (16, N'Zindankale Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (17, N'Mevlana Hastahanesi')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (18, N'Konya Hospital')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (19, N'1 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (20, N'2 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (21, N'3 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (22, N'4 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (23, N'5 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (24, N'6 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (25, N'7 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (26, N'8 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (27, N'9 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (28, N'10 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (29, N'11 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (30, N'12 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (31, N'13 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (32, N'14 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (33, N'15 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (34, N'16 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (35, N'17 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (36, N'18 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (37, N'19 Nolu Salık Ocağı')
INSERT [Kurumlar] ([ID], [KurumAd]) VALUES (38, N'20 Nolu Salık Ocağı')
SET IDENTITY_INSERT [Kurumlar] OFF
/****** Object:  Table [Ilaclar]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Ilaclar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KareKodu] [char](8) NULL,
	[FirmaID] [int] NULL,
	[KatogoriID] [int] NULL,
	[IlacAd] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Ilaclar] ON
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (1, N'10000001', 1, 1, N'Gripin')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (2, N'10000002', 1, 2, N'Minoset')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (3, N'10000003', 1, 3, N'Dolares')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (4, N'10000004', 1, 4, N'Penisilin')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (5, N'10000005', 1, 5, N'İnsulin')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (6, N'10000006', 1, 4, N'Novalgin')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (7, N'10000007', 1, 3, N'Talcit')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (8, N'10000008', 1, 2, N'Blume')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (9, N'10000009', 1, 2, N'Vermidon')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (10, N'10000010', 1, 5, N'Astogpos')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (11, N'10000011', 1, 3, N'Popeste')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (12, N'10000012', 1, 4, N'Kortizon')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (13, N'10000013', 1, 5, N'Pastil')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (14, N'10000014', 1, 2, N'Gripkov')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (15, N'10000015', 1, 1, N'Aspirin')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (16, N'10000016', 1, 5, N'Batiodin')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (17, N'10000017', 1, 4, N'Etolfort')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (18, N'10000018', 1, 1, N'Bepanthen')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (19, N'10000019', 1, 5, N'Asostalin')
INSERT [Ilaclar] ([ID], [KareKodu], [FirmaID], [KatogoriID], [IlacAd]) VALUES (20, N'10000020', 1, 1, N'Bengajen')
SET IDENTITY_INSERT [Ilaclar] OFF
/****** Object:  Table [Doktorlar]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Doktorlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](30) NULL,
	[Soyad] [nvarchar](30) NULL,
	[DrKodu] [char](6) NULL,
	[KurumID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Doktorlar] ON
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (1, N'Prof.Dr Ahmet', N'Genç', N'100001', 1)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (2, N'Prof.Dr Mehmet', N'Gençoğlu', N'100002', 2)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (3, N'Prof.Dr Ali', N'Al', N'100003', 3)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (4, N'Prof.Dr Gamze', N'Tok', N'100004', 4)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (5, N'Prof.Dr Fatma', N'Küçük', N'100005', 5)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (6, N'Prof.Dr Yasin', N'Tekneci', N'100006', 6)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (7, N'Prof.Dr Yunus', N'Ak', N'100007', 7)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (8, N'Prof.Dr Cenk', N'Tosun', N'100008', 8)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (9, N'Prof.Dr Hülya', N'Kara', N'100009', 9)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (10, N'Prof.Dr Ayça', N'Sağlam', N'100010', 10)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (11, N'Prof.Dr Bahri', N'Atabay', N'100011', 11)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (12, N'Prof.Dr Hüseyin', N'Çelik', N'100012', 12)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (13, N'Prof.Dr Hasan', N'Açıkgöz', N'100013', 13)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (14, N'Prof.Dr Emre', N'Karakaş', N'100014', 14)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (15, N'Prof.Dr Furkan', N'Karataş', N'100015', 15)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (16, N'Prof.Dr Hakan', N'Özmen', N'100016', 16)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (17, N'Prof.Dr Okan', N'Karaman', N'100017', 17)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (18, N'Prof.Dr Mehmet', N'Üzüm', N'100018', 18)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (19, N'Prof.Dr Aslı', N'Şahin', N'100019', 19)
INSERT [Doktorlar] ([ID], [Ad], [Soyad], [DrKodu], [KurumID]) VALUES (20, N'Prof.Dr Arda', N'Yılmaz', N'100020', 20)
SET IDENTITY_INSERT [Doktorlar] OFF
/****** Object:  Table [Receteler]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Receteler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SatisTarihi] [date] NULL,
	[MusteriID] [int] NULL,
	[DoktorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Receteler] ON
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (1, CAST(0x11350B00 AS Date), 1, 1)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (2, CAST(0xF3340B00 AS Date), 2, 2)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (3, CAST(0xD4340B00 AS Date), 3, 3)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (4, CAST(0xB6340B00 AS Date), 4, 4)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (5, CAST(0x97340B00 AS Date), 5, 5)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (6, CAST(0x78340B00 AS Date), 6, 6)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (7, CAST(0x5A340B00 AS Date), 7, 7)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (8, CAST(0x3B340B00 AS Date), 8, 8)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (9, CAST(0x1D340B00 AS Date), 9, 9)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (10, CAST(0xFE330B00 AS Date), 10, 10)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (11, CAST(0xE2330B00 AS Date), 11, 11)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (12, CAST(0xC3330B00 AS Date), 12, 12)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (13, CAST(0x11350B00 AS Date), 13, 13)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (14, CAST(0xF3340B00 AS Date), 14, 14)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (15, CAST(0xD4340B00 AS Date), 15, 15)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (16, CAST(0xB6340B00 AS Date), 16, 16)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (17, CAST(0x97340B00 AS Date), 17, 17)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (18, CAST(0x78340B00 AS Date), 18, 18)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (19, CAST(0x5A340B00 AS Date), 19, 19)
INSERT [Receteler] ([ID], [SatisTarihi], [MusteriID], [DoktorID]) VALUES (20, CAST(0x3B340B00 AS Date), 20, 20)
SET IDENTITY_INSERT [Receteler] OFF
/****** Object:  Table [ReceteDetaylari]    Script Date: 03/18/2012 11:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReceteDetaylari](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReceteID] [int] NULL,
	[IlacID] [int] NULL,
	[Adet] [int] NULL,
	[Fiyat] [money] NULL,
	[KDV] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [ReceteDetaylari] ON
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (1, 1, 1, 5, 2.5000, 10)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (2, 2, 7, 3, 10.8500, 2)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (3, 3, 7, 8, 22.5000, 5)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (4, 4, 7, 6, 15.0000, 7)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (5, 5, 7, 4, 10.5000, 6)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (6, 6, 6, 7, 5.0000, 12)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (7, 7, 7, 4, 9.5000, 10)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (8, 8, 8, 9, 3.5000, 11)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (9, 9, 9, 3, 6.0000, 6)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (10, 10, 10, 5, 9.5000, 18)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (11, 11, 11, 2, 5.0000, 7)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (12, 12, 12, 4, 20.5000, 20)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (13, 13, 13, 1, 120.0000, 5)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (14, 14, 14, 1, 250.0000, 3)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (15, 15, 15, 8, 11.9000, 1)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (16, 16, 16, 4, 3.4000, 6)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (17, 17, 17, 4, 13.3000, 10)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (18, 18, 18, 18, 18.1800, 18)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (19, 19, 19, 6, 6.4900, 3)
INSERT [ReceteDetaylari] ([ID], [ReceteID], [IlacID], [Adet], [Fiyat], [KDV]) VALUES (20, 20, 20, 2, 21.9500, 5)
SET IDENTITY_INSERT [ReceteDetaylari] OFF
/****** Object:  ForeignKey [FK__Ilaclar__FirmaID__117F9D94]    Script Date: 03/18/2012 11:14:55 ******/
ALTER TABLE [Ilaclar]  WITH CHECK ADD FOREIGN KEY([FirmaID])
REFERENCES [Firmalar] ([ID])
GO
/****** Object:  ForeignKey [FK__Ilaclar__Katogor__1273C1CD]    Script Date: 03/18/2012 11:14:55 ******/
ALTER TABLE [Ilaclar]  WITH CHECK ADD FOREIGN KEY([KatogoriID])
REFERENCES [IlaCKatagorileri] ([ID])
GO
/****** Object:  ForeignKey [FK__Doktorlar__Kurum__08EA5793]    Script Date: 03/18/2012 11:14:55 ******/
ALTER TABLE [Doktorlar]  WITH CHECK ADD FOREIGN KEY([KurumID])
REFERENCES [Kurumlar] ([ID])
GO
/****** Object:  ForeignKey [FK__Receteler__Dokto__1BFD2C07]    Script Date: 03/18/2012 11:14:55 ******/
ALTER TABLE [Receteler]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [Doktorlar] ([ID])
GO
/****** Object:  ForeignKey [FK__Receteler__Muste__1B0907CE]    Script Date: 03/18/2012 11:14:55 ******/
ALTER TABLE [Receteler]  WITH CHECK ADD FOREIGN KEY([MusteriID])
REFERENCES [Musteriler] ([ID])
GO
/****** Object:  ForeignKey [FK__ReceteDet__IlacI__21B6055D]    Script Date: 03/18/2012 11:14:55 ******/
ALTER TABLE [ReceteDetaylari]  WITH CHECK ADD FOREIGN KEY([IlacID])
REFERENCES [Ilaclar] ([ID])
GO
/****** Object:  ForeignKey [FK__ReceteDet__Recet__20C1E124]    Script Date: 03/18/2012 11:14:55 ******/
ALTER TABLE [ReceteDetaylari]  WITH CHECK ADD FOREIGN KEY([ReceteID])
REFERENCES [Receteler] ([ID])
GO
