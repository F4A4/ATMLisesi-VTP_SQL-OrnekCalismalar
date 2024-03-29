USE [EczaneTakip]
GO
/****** Object:  Table [dbo].[tblDoktor]    Script Date: 04.03.2013 15:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDoktor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](30) NULL,
	[Soyad] [nvarchar](30) NULL,
	[DrKodu] [char](6) NULL,
	[KurumID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFirma]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFirma](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIlac]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIlac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KareKodu] [char](8) NULL,
	[FirmaID] [int] NULL,
	[KatogoriID] [int] NULL,
	[IlacAd] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIlaCKatagori]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblIlaCKatagori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KatogoriAd] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKurum]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKurum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KurumAd] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMusteri]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMusteri](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRecete]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecete](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SatisTarihi] [date] NULL,
	[MusteriID] [int] NULL,
	[DoktorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblReceteDetay]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReceteDetay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReceteID] [int] NULL,
	[IlacID] [int] NULL,
	[Adet] [int] NULL,
	[Fiyat] [money] NULL,
	[KDV] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vwDoktorKurum]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwDoktorKurum] as
select d.Ad+''+d.Soyad as 'Doktor Adı Soyadı' ,k.KurumAd
from tblDoktor d
join tblKurum k on k.ID=d.KurumID

GO
/****** Object:  View [dbo].[vwIlacFirmaIlacKategori]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwIlacFirmaIlacKategori]
AS
SELECT        TOP (100) PERCENT dbo.tblIlac.KareKodu, dbo.tblIlac.IlacAd, dbo.tblFirma.FirmaAd
FROM            dbo.tblFirma INNER JOIN
                         dbo.tblIlac ON dbo.tblFirma.ID = dbo.tblIlac.FirmaID INNER JOIN
                         dbo.tblIlaCKatagori ON dbo.tblIlac.KatogoriID = dbo.tblIlaCKatagori.ID
ORDER BY dbo.tblIlac.IlacAd

GO
/****** Object:  View [dbo].[vwSonEklenen5Doktor]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwSonEklenen5Doktor] as 
select top(5) * from tblDoktor 
order by ID desc 
GO
/****** Object:  View [dbo].[vwSonEklenen5DoktorKurum]    Script Date: 04.03.2013 15:15:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwSonEklenen5DoktorKurum] as 
select top(5) d.Ad+''+d.Soyad as 'Doktor Adı Soyadı' ,k.KurumAd
from tblDoktor d
join tblKurum k on k.ID=d.KurumID
order by d.ID desc 
GO
ALTER TABLE [dbo].[tblDoktor]  WITH CHECK ADD FOREIGN KEY([KurumID])
REFERENCES [dbo].[tblKurum] ([ID])
GO
ALTER TABLE [dbo].[tblIlac]  WITH CHECK ADD FOREIGN KEY([FirmaID])
REFERENCES [dbo].[tblFirma] ([ID])
GO
ALTER TABLE [dbo].[tblIlac]  WITH CHECK ADD FOREIGN KEY([KatogoriID])
REFERENCES [dbo].[tblIlaCKatagori] ([ID])
GO
ALTER TABLE [dbo].[tblRecete]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [dbo].[tblDoktor] ([ID])
GO
ALTER TABLE [dbo].[tblRecete]  WITH CHECK ADD FOREIGN KEY([MusteriID])
REFERENCES [dbo].[tblMusteri] ([ID])
GO
ALTER TABLE [dbo].[tblReceteDetay]  WITH CHECK ADD FOREIGN KEY([IlacID])
REFERENCES [dbo].[tblIlac] ([ID])
GO
ALTER TABLE [dbo].[tblReceteDetay]  WITH CHECK ADD FOREIGN KEY([ReceteID])
REFERENCES [dbo].[tblRecete] ([ID])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblFirma"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblIlac"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 214
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblIlaCKatagori"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 135
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwIlacFirmaIlacKategori'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwIlacFirmaIlacKategori'
GO
