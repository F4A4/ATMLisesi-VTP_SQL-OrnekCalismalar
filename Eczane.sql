USE [Eczane2]
GO
/****** Object:  Table [dbo].[tblBirimler]    Script Date: 31.12.2012 15:23:11 ******/
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
/****** Object:  Table [dbo].[tblDoktor]    Script Date: 31.12.2012 15:23:11 ******/
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
/****** Object:  Table [dbo].[tblEczaneDeposu]    Script Date: 31.12.2012 15:23:11 ******/
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
/****** Object:  Table [dbo].[tblUnvan]    Script Date: 31.12.2012 15:23:11 ******/
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
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (2, N'Nöroloji')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (3, N'Dahiliye')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (4, N'KBS')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (5, N'Göz')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (6, N'Genel Cerrahi')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (7, N'Özel Cerrahi')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (8, N'Kadýn Doðum')
GO
INSERT [dbo].[tblBirimler] ([ID], [BirimAd]) VALUES (9, N'Diþ')
GO
SET IDENTITY_INSERT [dbo].[tblBirimler] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDoktor] ON 

GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (1, 2, N'Ayþe Gök', N'1223      ', 1, N'12345672', N'Nalçacý')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (2, 3, N'Nazlý Gider', N'3456      ', 2, N'34567890', N'Lalebahçe')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (3, 5, N'Özcan Katýr', N'1235      ', 4, N'45678975', N'Ahmet Özcan')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (4, 2, N'Emre Günýþýk', N'6543      ', 3, N'76584578', N'Muhacir Pazarý')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (5, 9, N'Derya Deniz', N'1238      ', 5, N'65478902', N'Cumhuriyet')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (6, 5, N'Eslem Bilir', N'6785      ', 2, N'78658903', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (7, 1, N'Hakan Acar', N'2345      ', 1, N'64753890', N'Ankara Yolu')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (8, 4, N'Emel Diyar', N'8975      ', 5, N'65478902', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (9, 3, N'Muharrem Ezel', N'1234      ', 4, N'32345677', N'Muhacir Pazarý')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (10, 6, N'Ece Kayýk', N'2378      ', 2, N'78906702', N'Lalebahçe')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (11, 7, N'Cem Ten', N'9467      ', 1, N'34528907', N'Nalçacý')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (12, 4, N'Kazým Barut', N'8723      ', 3, N'98765423', N'Toki')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (13, 5, N'Adem Asan', N'1298      ', 5, N'15467806', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (14, 8, N'Nermin Þen', N'2345      ', 1, N'12233455', N'Kadýnlar Pazarý')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (15, 6, N'Yakup Diri ', N'6767      ', 3, N'34345667', N'Ankara Yolu')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (16, 3, N'Ulaþ Emir', N'8907      ', 4, N'22335467', N'Zafer ')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (17, 2, N'Feraye  Ada', N'4560      ', 3, N'98654890', N'Alaaddin Çevresi')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (18, 1, N'Kübra Demir', N'2356      ', 2, N'54676578', N'Ahmet Özcan')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (19, 4, N'Sevil Kes', N'1290      ', 5, N'86768987', N'Zafer')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (20, 5, N'Ahmet Uður', N'2357      ', 4, N'88767632', N'Alaaddin Çevresi')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (22, 3, N'Zerrin Çen', N'1777      ', 5, N'75489589', N'Cumhuriyet')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (23, 9, N'Melek En', N'1290      ', 4, N'67899900', N'Sille')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (24, 5, N'Emir Demir', N'3456      ', 3, N'89765443', N'Kadýnlar Pazarý')
GO
INSERT [dbo].[tblDoktor] ([ID], [BirimID], [AdSoyad], [DrNo], [UnvanAd], [TelCep], [Adres]) VALUES (25, 8, N'Diyar Sevil', N'7868      ', 1, N'67599540', N'Toki')
GO
SET IDENTITY_INSERT [dbo].[tblDoktor] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEczaneDeposu] ON 

GO
INSERT [dbo].[tblEczaneDeposu] ([ID], [DepoAd], [Adresi], [Tel], [YetkiliKisi]) VALUES (1, N'Asýl', N'Nalçacý', N'12345566  ', N'Esin Deniz')
GO
SET IDENTITY_INSERT [dbo].[tblEczaneDeposu] OFF
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
ALTER TABLE [dbo].[tblDoktor]  WITH CHECK ADD  CONSTRAINT [FK_tblDoktor_tblBirimler] FOREIGN KEY([BirimID])
REFERENCES [dbo].[tblBirimler] ([ID])
GO
ALTER TABLE [dbo].[tblDoktor] CHECK CONSTRAINT [FK_tblDoktor_tblBirimler]
GO
ALTER TABLE [dbo].[tblDoktor]  WITH CHECK ADD  CONSTRAINT [FK_tblDoktor_tblUnvan] FOREIGN KEY([UnvanAd])
REFERENCES [dbo].[tblUnvan] ([ID])
GO
ALTER TABLE [dbo].[tblDoktor] CHECK CONSTRAINT [FK_tblDoktor_tblUnvan]
GO
