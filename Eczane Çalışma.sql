USE [EczaneTakip]
GO
/****** Object:  Table [dbo].[tblBirimler]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBirimler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BirimAd] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblBirimler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDoktor]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDoktor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BirimID] [int] NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[DrNo] [nchar](10) NULL,
	[UnvanAd] [int] NULL,
	[TelCep] [varchar](20) NULL,
	[Adres] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblDoktor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEczaneDeposu]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEczaneDeposu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DepoAd] [nvarchar](50) NOT NULL,
	[Adresi] [nvarchar](50) NULL,
	[Tel] [nchar](10) NULL,
	[YetkiliKisi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblEczaneDeposu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblilac]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblilac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Barkod] [char](10) NULL,
	[�reticiFirma] [nvarchar](50) NULL,
	[EczaDepoID] [int] NULL,
	[�lacKategoriID] [int] NULL,
 CONSTRAINT [PK_tblilac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblilacKategori]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblilacKategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblilacKategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMusteri]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMusteri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[Eposta] [nvarchar](150) NULL,
	[Tel] [varchar](20) NULL,
 CONSTRAINT [PK_tblMusteri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSatis]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSatis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [datetime] NULL,
	[MusteriID] [int] NULL,
	[ilacID] [nchar](10) NULL,
	[Fiyat] [money] NULL,
	[Adet] [int] NULL,
 CONSTRAINT [PK_tblSatis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUnvan]    Script Date: 08.01.2013 14:47:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUnvan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnvanAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblUnvan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblBirimler] ON 

GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (1, N'Psikoloji')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (2, N'N�roloji')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (3, N'Dahiliye')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (4, N'KBS')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (5, N'G�z')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (6, N'Genel Cerrahi')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (7, N'�zel Cerrahi')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (8, N'Kad�n Do�um')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (9, N'Di�')
GO
SET IDENTITY_INSERT [dbo].[tblBirimler] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDoktor] ON 

GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (1, 2, N'Ay�e G�k', N'1223      ', 1, N'12345672', N'Nal�ac�')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (2, 3, N'Nazl� Gider', N'3456      ', 2, N'34567890', N'Lalebah�e')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (3, 5, N'�zcan Kat�r', N'1235      ', 4, N'45678975', N'Ahmet �zcan')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (4, 2, N'Emre G�n���k', N'6543      ', 3, N'76584578', N'Muhacir Pazar�')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (5, 9, N'Derya Deniz', N'1238      ', 5, N'65478902', N'Cumhuriyet')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (6, 5, N'Eslem Bilir', N'6785      ', 2, N'78658903', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (7, 1, N'Hakan Akar', N'2345      ', 1, N'64753890', N'Ankara Yolu')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (8, 4, N'Emel Diyar', N'8975      ', 5, N'65478902', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (9, 3, N'Muharrem Ezel', N'1234      ', 4, N'32345677', N'Muhacir Pazar�')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (10, 6, N'Ece Kay�k', N'2378      ', 2, N'78906702', N'Lalebah�e')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (11, 7, N'Cem Ten', N'9467      ', 1, N'34528907', N'Nal�ac�')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (12, 4, N'Kaz�m Barut', N'8723      ', 3, N'98765423', N'Toki')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (13, 5, N'Adem Asan', N'1298      ', 5, N'15467806', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (14, 8, N'Nermin �en', N'2345      ', 1, N'12233455', N'Kad�nlar Pazar�')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (15, 6, N'Yakup Diri ', N'6767      ', 3, N'34345667', N'Ankara Yolu')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (16, 3, N'Ula� Emir', N'8907      ', 4, N'22335467', N'Zafer ')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (17, 2, N'Feraye  Ada', N'4560      ', 3, N'98654890', N'Alaaddin �evresi')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (18, 1, N'K�bra Demir', N'2356      ', 2, N'54676578', N'Ahmet �zcan')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (19, 4, N'Sevil Kes', N'1290      ', 5, N'86768987', N'Zafer')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (20, 5, N'Ahmet U�ur', N'2357      ', 4, N'88767632', N'Alaaddin �evresi')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (22, 3, N'Zerrin �en', N'1777      ', 5, N'75489589', N'Cumhuriyet')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (23, 9, N'Melek En', N'1290      ', 4, N'67899900', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (24, 5, N'Emir Demir', N'3456      ', 3, N'89765443', N'Kad�nlar Pazar�')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (25, 8, N'Diyar Sevil', N'7868      ', 1, N'67599540', N'Toki')
GO
SET IDENTITY_INSERT [dbo].[tblDoktor] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEczaneDeposu] ON 

GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (1, N'As', N'Nal�ac�', N'32225468  ', N'Esin DEN�Z')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (2, N'G�ksu', N'Ayd�nl�k Evler ', N'32165498  ', N'Burak BA�ARAN')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (3, N'Hedef', N'Fatihler', N'44452563  ', N'Ahmet KELE�O�LU')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (4, N'Afyon', N'Bah�eli Evler', N'42631524  ', N'Ethem SANCAK')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (5, N'Meltem', N'G�ng�renler', N'23654215  ', N'Nevzat KUTSAL')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (6, N'Bo�azi�i', N'Avc�lar', N'21542627  ', N'�mer �NDER')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (7, N'�am', N'Bayram Pa�a', N'32012548  ', N'Ba�ak �ZT�RK')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (8, N'Melis', N'Meram ', N'42032152  ', N'K�bra KAHYA')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (9, N'Koz', N'Karatay', N'33365354  ', N'Ayd�n EVREN')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (10, N'�zSel', N'Sel�uklu', N'44215287  ', N'Fatma ALTAY')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (11, N'Alp', N'Lalebah�e', N'23596841  ', N'Mehmet ENG�N')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (12, N'Bar��', N'Sille', N'20212450  ', N'Kaz�m DESEN')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (13, N'�zDil', N'Yaka Meram', N'32145275  ', N'�ule ALTIN')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (14, N'G�ner', N'Kamp�s', N'24515789  ', N'Esra SARI')
GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (15, N'Y�cesoy', N'Yeniyol', N'46524766  ', N'Aynur ULU�AN')
GO
SET IDENTITY_INSERT [dbo].[tblEczaneDeposu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblilac] ON 

GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (1, N'Parol', N'123456254 ', N'K�bra Holding', 1, 1)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (2, N'Aferin', N'321456211 ', N'�mer Holding', 1, 3)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (3, N'Gripin', N'214566444 ', N'Yunus Holding', 2, 1)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (4, N'Tylolhot', N'123565242 ', N'Aynur Holding', 3, 5)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (5, N'Talcin', N'542562474 ', N'Fatma Holding', 2, 3)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (6, N'Lansor', N'425145247 ', N'ArifUysal Holding', 2, 8)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (7, N'Majezik', N'321548789 ', N'Ba�ar�l� Holding', 3, 2)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (8, N'Vermidon', N'124578524 ', N'Onurlu Holding', 1, 2)
GO
INSERT [dbo].[tblilac] ([ID], [Ad], [Barkod], [�reticiFirma], [EczaDepoID], [�lacKategoriID]) VALUES (9, N'Tefor', N'452145215 ', NULL, 2, 4)
GO
SET IDENTITY_INSERT [dbo].[tblilac] OFF
GO
SET IDENTITY_INSERT [dbo].[tblilacKategori] ON 

GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (1, N'A�r� Kesiciler')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (2, N'Antibiyotikler')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (3, N'Pomatlar')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (4, N'Uyu�turucular')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (5, N'Damlalar')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (6, N'Mide �la�lar�')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (7, N'Kremler')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (8, N'�uruplar')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (9, N'Antitepresan')
GO
INSERT [dbo].[tblilacKategori] ([ID], [KategoriAd]) VALUES (10, N'G�zellik �r�nleri')
GO
SET IDENTITY_INSERT [dbo].[tblilacKategori] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMusteri] ON 

GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (1, N'K�bra KAHYA', N'k�bra@hotmail.com', N'0545 252 25 25')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (2, N'Yunus KA�AR', N'yunus@hotmail.com', N'0546 255 21 45')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (3, N'�mer KALAYCI', N'�mer@hotmail.com', N'0541 211 12 36')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (4, N'Aynur ULU�AN', N'aynur@hotmail.com', N'0333 252 78 91')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (5, N'Yunus K�K', N'yunusk@hotmail.com', N'0546 257 89 63')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (6, N'Arif UYSAL', N'arifuysal@hotmail.com', N'0246 963 21 24')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (7, N'Fatma ALTAY', N'fatma@hotmail.com', N'0356 258 69 34')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (8, N'Haydar SATICI', N'haydar@hotmail.com', N'0541 147 36 85')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (9, N'Emine KAMACI', N'kamac�@hotmail.com', N'0542 123 57 99')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (10, N'Hafize G�NG�R', N'g�ng�r@hotmail.com', N'0555 111 22 44')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (11, N'Muhammet Y�CEK�K', N'y�ce@hotmail.com', N'0365 941 12 77')
GO
INSERT [dbo].[tblMusteri] ([ID], [AdSoyad], [Eposta], [Tel]) VALUES (12, N'Osman P�R�N���', N'prin��i@hotmail.com', N'0254 755 41 88')
GO
SET IDENTITY_INSERT [dbo].[tblMusteri] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSatis] ON 

GO
INSERT [dbo].[tblSatis] ([ID], [Tarih], [MusteriID], [ilacID], [Fiyat], [Adet]) VALUES (1, CAST(0x0000A12500000000 AS DateTime), 1, N'2         ', 1521.0000, 1)
GO
INSERT [dbo].[tblSatis] ([ID], [Tarih], [MusteriID], [ilacID], [Fiyat], [Adet]) VALUES (2, CAST(0x0000A25600000000 AS DateTime), 2, N'1         ', 200.0000, 2)
GO
INSERT [dbo].[tblSatis] ([ID], [Tarih], [MusteriID], [ilacID], [Fiyat], [Adet]) VALUES (3, CAST(0x00009D7E00000000 AS DateTime), 1, N'1         ', 1000.0000, 1)
GO
INSERT [dbo].[tblSatis] ([ID], [Tarih], [MusteriID], [ilacID], [Fiyat], [Adet]) VALUES (4, CAST(0x00009BFB00000000 AS DateTime), 1, N'2         ', 5000.0000, 1)
GO
INSERT [dbo].[tblSatis] ([ID], [Tarih], [MusteriID], [ilacID], [Fiyat], [Adet]) VALUES (5, CAST(0x0000A09300000000 AS DateTime), 2, N'1         ', 465.0000, 2)
GO
INSERT [dbo].[tblSatis] ([ID], [Tarih], [MusteriID], [ilacID], [Fiyat], [Adet]) VALUES (6, CAST(0x00009E5E00000000 AS DateTime), 1, N'2         ', 3335.0000, 1)
GO
INSERT [dbo].[tblSatis] ([ID], [Tarih], [MusteriID], [ilacID], [Fiyat], [Adet]) VALUES (7, CAST(0x00009DC900000000 AS DateTime), 2, N'2         ', 1245.0000, 2)
GO
SET IDENTITY_INSERT [dbo].[tblSatis] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUnvan] ON 

GO
INSERT [dbo].[tblUnvan] ([ID], [UnvanAd]) VALUES (1, N'Doc')
GO
INSERT [dbo].[tblUnvan] ([ID], [UnvanAd]) VALUES (2, N'Prof')
GO
INSERT [dbo].[tblUnvan] ([ID], [UnvanAd]) VALUES (3, N'Dr')
GO
INSERT [dbo].[tblUnvan] ([ID], [UnvanAd]) VALUES (4, N'Doc.Dr')
GO
INSERT [dbo].[tblUnvan] ([ID], [UnvanAd]) VALUES (5, N'Prof.Dr')
GO
SET IDENTITY_INSERT [dbo].[tblUnvan] OFF
GO
ALTER TABLE [dbo].[tblSatis] ADD  CONSTRAINT [DF_tblSatis_Tarih]  DEFAULT (getdate()) FOR [Tarih]
GO
ALTER TABLE [dbo].[tblDoktor]  WITH CHECK ADD  CONSTRAINT [FK_tblDoktor_tblBirimler1] FOREIGN KEY([BirimID])
REFERENCES [dbo].[tblBirimler] ([ID])
GO
ALTER TABLE [dbo].[tblDoktor] CHECK CONSTRAINT [FK_tblDoktor_tblBirimler1]
GO
ALTER TABLE [dbo].[tblDoktor]  WITH CHECK ADD  CONSTRAINT [FK_tblDoktor_tblUnvan1] FOREIGN KEY([UnvanAd])
REFERENCES [dbo].[tblUnvan] ([ID])
GO
ALTER TABLE [dbo].[tblDoktor] CHECK CONSTRAINT [FK_tblDoktor_tblUnvan1]
GO
ALTER TABLE [dbo].[tblilac]  WITH CHECK ADD  CONSTRAINT [FK_tblilac_tblEczaneDeposu] FOREIGN KEY([EczaDepoID])
REFERENCES [dbo].[tblEczaneDeposu] ([ID])
GO
ALTER TABLE [dbo].[tblilac] CHECK CONSTRAINT [FK_tblilac_tblEczaneDeposu]
GO
ALTER TABLE [dbo].[tblilac]  WITH CHECK ADD  CONSTRAINT [FK_tblilac_tblilacKategori] FOREIGN KEY([�lacKategoriID])
REFERENCES [dbo].[tblilacKategori] ([ID])
GO
ALTER TABLE [dbo].[tblilac] CHECK CONSTRAINT [FK_tblilac_tblilacKategori]
GO
