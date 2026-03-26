USE [HastahaneDB]
GO
/****** Object:  Table [dbo].[Branslar]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branslar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](250) NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Branslar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doktorlar]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktorlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NOT NULL,
	[Soyadi] [nvarchar](100) NOT NULL,
	[Cinsiyet] [nvarchar](10) NOT NULL,
	[TC] [nchar](11) NOT NULL,
	[Telefon] [nvarchar](25) NULL,
	[BransId] [int] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Adres] [nvarchar](max) NULL,
	[DogumTarihi] [datetime] NULL,
	[DogumYeri] [nvarchar](100) NULL,
	[GirisTarihi] [datetime] NOT NULL,
	[CikisTarihi] [datetime] NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Doktorlar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hastalar]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastalar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NOT NULL,
	[Soyadi] [nvarchar](100) NOT NULL,
	[TC] [nchar](11) NOT NULL,
	[Telefon] [nvarchar](25) NULL,
	[Email] [nvarchar](50) NULL,
	[Adres] [nvarchar](max) NULL,
	[KayitTarihi] [datetime] NOT NULL,
	[DogumTarihi] [datetime] NOT NULL,
	[DogumYeri] [nvarchar](100) NULL,
	[Cinsiyet] [nvarchar](10) NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hastalar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klinikler]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klinikler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](250) NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[DoktorId] [int] NOT NULL,
 CONSTRAINT [PK_Klinikler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](100) NOT NULL,
	[Sifre] [nvarchar](100) NOT NULL,
	[Adi] [nvarchar](150) NOT NULL,
	[Soyadi] [nvarchar](150) NOT NULL,
	[YetkiId] [int] NOT NULL,
	[AktifMi] [bit] NOT NULL,
	[OlusturanId] [int] NULL,
	[KayitTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_Kullanicilar_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](100) NOT NULL,
	[Soyadi] [nvarchar](100) NOT NULL,
	[Cinsiyet] [nvarchar](10) NOT NULL,
	[TC] [nchar](11) NOT NULL,
	[Telefon] [nvarchar](25) NULL,
	[Email] [nvarchar](50) NULL,
	[Adres] [nvarchar](max) NULL,
	[GorevTanimi] [nvarchar](150) NOT NULL,
	[DogumTarihi] [datetime] NULL,
	[DogumYeri] [nvarchar](100) NULL,
	[GirisTarihi] [datetime] NOT NULL,
	[CikisTarihi] [datetime] NULL,
	[Aciklama] [nvarchar](max) NOT NULL,
	[AktifMi] [bit] NOT NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Randevular]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevular](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[DoktorId] [int] NOT NULL,
	[HastaId] [int] NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[KayitTarihi] [datetime] NOT NULL,
	[GeldiMi] [bit] NOT NULL,
	[OlusturanId] [int] NOT NULL,
 CONSTRAINT [PK_Randevular] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yetkiler]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetkiler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Yetkiler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Doktor_Randevu_Sayisi]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vw_Doktor_Randevu_Sayisi]
as
select 
d.Adi as 'Doktor Adı',d.Soyadi as 'Doktor Soyadı', COUNT(r.Id) as 'Randevu Sayısı'
from Randevular as r
inner join Doktorlar as d on d.Id=r.DoktorId
group by d.Adi,d.Soyadi
GO
/****** Object:  View [dbo].[vw_Doktor_Randevu_SubQuery]    Script Date: 26.03.2026 17:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_Doktor_Randevu_SubQuery]
as
select 
DoktorId,COUNT(Id)as 'Randevu Sayısı'
from Randevular
group by DoktorId
having COUNT(Id)>3
GO
SET IDENTITY_INSERT [dbo].[Branslar] ON 
GO
INSERT [dbo].[Branslar] ([Id], [Adi], [Aciklama]) VALUES (1, N'KBB', NULL)
GO
INSERT [dbo].[Branslar] ([Id], [Adi], [Aciklama]) VALUES (2, N'Dahiliye', NULL)
GO
INSERT [dbo].[Branslar] ([Id], [Adi], [Aciklama]) VALUES (3, N'Ortopedi', NULL)
GO
SET IDENTITY_INSERT [dbo].[Branslar] OFF
GO
SET IDENTITY_INSERT [dbo].[Doktorlar] ON 
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (4, N'Pervin', N'Sarali', N'Kadin', N'10234567891', N'0544 444 44 44', 1, N'pervin@gmail.com', N'Pamuk mah, esenyali sok. No45/7 MAltepe-Istanbul', CAST(N'1987-01-01T00:00:00.000' AS DateTime), N'Çankiri', CAST(N'2026-03-12T21:20:03.497' AS DateTime), NULL, N'Test data eklemesi')
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (5, N'Samet', N'Sali', N'Erkek', N'10234567891', N'0544 444 33 33', 1, NULL, N'Salman mah, konyali sok. No:10/11 Kartla-Istanbul', CAST(N'1991-01-11T00:00:00.000' AS DateTime), N'Van', CAST(N'2026-03-12T21:31:39.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (8, N'Ülkü', N'Erden', N'Kadin', N'10234567800', N'0544 547 33 33', 2, NULL, N'man mah, bahçivan sok. No:1/41 Fikirtepe-Istanbul', CAST(N'1990-12-29T00:00:00.000' AS DateTime), N'Rize', CAST(N'2026-03-12T21:34:11.493' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (9, N'Birol', N'fatsali', N'Erkek', N'10247567891', N'0544 554 21 54', 2, NULL, N'Salman mah, konyali sok. No:10/11 Kartla-Istanbul', CAST(N'1991-01-11T00:00:00.000' AS DateTime), N'Van', CAST(N'2026-03-12T21:35:23.347' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (10, N'Ömer', N'palatsi', N'Erkek', N'1027891    ', N'0544 554 21 54', 3, NULL, N'Salman mah, konyali sok. No:10/11 Kartla-Istanbul', CAST(N'1988-11-12T00:00:00.000' AS DateTime), N'Giresun', CAST(N'2026-03-12T21:37:33.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (11, N'Gaye', N'Ümreli', N'KAdin', N'1024751    ', N'0542 554 19 32', 3, NULL, N'kahtali  mah, mala sok. No:5/9 Kadiköy-Istanbul', CAST(N'1993-01-09T00:00:00.000' AS DateTime), N'Istanbul', CAST(N'2026-03-12T21:37:33.340' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (12, N'Mehmet', N'Yildiz', N'Erkek', N'23412312312', N'5324565656', 2, N'mehmet@mail.com', N'Kartal, Istanbul', NULL, N'Antalya', CAST(N'2026-03-17T20:50:25.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (13, N'Fatma', N'Kaya', N'Kadin', N'33412312312', N'5334565656', 3, N'fatma@mail.com', N'Maltepe, Istanbul', NULL, N'Izmir', CAST(N'2026-03-17T20:50:25.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (14, N'Ali', N'Demir', N'Erkek', N'43412312312', N'5344565656', 1, N'ali@mail.com', N'Kadiköy, Istanbul', NULL, N'Bursa', CAST(N'2026-03-17T20:50:25.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Doktorlar] ([Id], [Adi], [Soyadi], [Cinsiyet], [TC], [Telefon], [BransId], [Email], [Adres], [DogumTarihi], [DogumYeri], [GirisTarihi], [CikisTarihi], [Aciklama]) VALUES (15, N'Zeynep', N'Sahin', N'Kadin', N'53412312312', N'5354565656', 2, N'zeynep@mail.com', N'Üsküdar, Istanbul', NULL, N'Ankara', CAST(N'2026-03-17T20:50:25.630' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Doktorlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Hastalar] ON 
GO
INSERT [dbo].[Hastalar] ([Id], [Adi], [Soyadi], [TC], [Telefon], [Email], [Adres], [KayitTarihi], [DogumTarihi], [DogumYeri], [Cinsiyet], [Aciklama]) VALUES (1, N'Ahmet', N'Kara', N'12345678901', N'05321234567', N'ahmet@mail.com', N'Kartal, Istanbul', CAST(N'2026-03-17T20:49:11.657' AS DateTime), CAST(N'1990-05-12T00:00:00.000' AS DateTime), N'Ankara', N'Erkek', NULL)
GO
INSERT [dbo].[Hastalar] ([Id], [Adi], [Soyadi], [TC], [Telefon], [Email], [Adres], [KayitTarihi], [DogumTarihi], [DogumYeri], [Cinsiyet], [Aciklama]) VALUES (2, N'Elif', N'Yilmaz', N'12345678902', N'05332234567', N'elif@mail.com', N'Pendik, Istanbul', CAST(N'2026-03-17T20:49:11.657' AS DateTime), CAST(N'1995-07-20T00:00:00.000' AS DateTime), N'Izmir', N'Kadin', NULL)
GO
INSERT [dbo].[Hastalar] ([Id], [Adi], [Soyadi], [TC], [Telefon], [Email], [Adres], [KayitTarihi], [DogumTarihi], [DogumYeri], [Cinsiyet], [Aciklama]) VALUES (3, N'Mustafa', N'Demir', N'12345678903', N'05343234567', N'mustafa@mail.com', N'Maltepe, Istanbul', CAST(N'2026-03-17T20:49:11.657' AS DateTime), CAST(N'1988-03-15T00:00:00.000' AS DateTime), N'Bursa', N'Erkek', NULL)
GO
INSERT [dbo].[Hastalar] ([Id], [Adi], [Soyadi], [TC], [Telefon], [Email], [Adres], [KayitTarihi], [DogumTarihi], [DogumYeri], [Cinsiyet], [Aciklama]) VALUES (4, N'Zeynep', N'Aydin', N'12345678904', N'05354234567', N'zeynep@mail.com', N'Kadiköy, Istanbul', CAST(N'2026-03-17T20:49:11.657' AS DateTime), CAST(N'1992-11-08T00:00:00.000' AS DateTime), N'Antalya', N'Kadin', NULL)
GO
INSERT [dbo].[Hastalar] ([Id], [Adi], [Soyadi], [TC], [Telefon], [Email], [Adres], [KayitTarihi], [DogumTarihi], [DogumYeri], [Cinsiyet], [Aciklama]) VALUES (5, N'Mert', N'Çelik', N'12345678905', N'05365234567', N'mert@mail.com', N'Üsküdar, Istanbul', CAST(N'2026-03-17T20:49:11.657' AS DateTime), CAST(N'1997-01-25T00:00:00.000' AS DateTime), N'Adana', N'Erkek', NULL)
GO
SET IDENTITY_INSERT [dbo].[Hastalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Klinikler] ON 
GO
INSERT [dbo].[Klinikler] ([Id], [Adi], [Aciklama], [DoktorId]) VALUES (1, N'KBB-1', NULL, 5)
GO
INSERT [dbo].[Klinikler] ([Id], [Adi], [Aciklama], [DoktorId]) VALUES (2, N'KBB-2', NULL, 4)
GO
INSERT [dbo].[Klinikler] ([Id], [Adi], [Aciklama], [DoktorId]) VALUES (3, N'Dahiliye-1', NULL, 11)
GO
INSERT [dbo].[Klinikler] ([Id], [Adi], [Aciklama], [DoktorId]) VALUES (4, N'Dahiliye-2', NULL, 10)
GO
INSERT [dbo].[Klinikler] ([Id], [Adi], [Aciklama], [DoktorId]) VALUES (5, N'Dahiliye-2', NULL, 10)
GO
INSERT [dbo].[Klinikler] ([Id], [Adi], [Aciklama], [DoktorId]) VALUES (6, N'Ortopedi-2', NULL, 8)
GO
SET IDENTITY_INSERT [dbo].[Klinikler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 
GO
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [Adi], [Soyadi], [YetkiId], [AktifMi], [OlusturanId], [KayitTarihi]) VALUES (1, N'test', N'123', N'test', N'test', 1, 1, 1, CAST(N'2026-03-17T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[Randevular] ON 
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (1, CAST(N'2026-01-04' AS Date), CAST(N'10:30:00' AS Time), 4, 1, N'Mide agrisi', CAST(N'2026-03-17T20:55:09.920' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (4, CAST(N'2026-01-04' AS Date), CAST(N'10:40:00' AS Time), 13, 1, N'agrisi', CAST(N'2026-03-17T20:57:21.363' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (5, CAST(N'2026-01-04' AS Date), CAST(N'10:55:00' AS Time), 12, 2, N'agrisi', CAST(N'2026-03-17T20:57:21.363' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (6, CAST(N'2026-01-04' AS Date), CAST(N'10:55:00' AS Time), 8, 3, N'agrisi', CAST(N'2026-03-17T20:57:21.363' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (7, CAST(N'2026-01-04' AS Date), CAST(N'11:25:00' AS Time), 9, 4, N'agrisi', CAST(N'2026-03-17T20:57:21.363' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (8, CAST(N'2026-01-04' AS Date), CAST(N'11:05:00' AS Time), 10, 5, N'agrisi', CAST(N'2026-03-17T20:57:21.363' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (9, CAST(N'2026-01-04' AS Date), CAST(N'11:55:00' AS Time), 11, 1, N'agrisi', CAST(N'2026-03-17T20:57:21.363' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (43, CAST(N'2026-03-20' AS Date), CAST(N'09:00:00' AS Time), 4, 1, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (44, CAST(N'2026-03-20' AS Date), CAST(N'09:30:00' AS Time), 5, 2, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (45, CAST(N'2026-03-20' AS Date), CAST(N'10:00:00' AS Time), 13, 3, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (46, CAST(N'2026-03-26' AS Date), CAST(N'09:00:00' AS Time), 4, 1, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (47, CAST(N'2026-03-26' AS Date), CAST(N'09:30:00' AS Time), 5, 2, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (48, CAST(N'2026-03-26' AS Date), CAST(N'10:00:00' AS Time), 15, 3, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (49, CAST(N'2026-03-26' AS Date), CAST(N'10:30:00' AS Time), 13, 4, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (50, CAST(N'2026-03-26' AS Date), CAST(N'11:00:00' AS Time), 8, 5, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (51, CAST(N'2026-03-25' AS Date), CAST(N'09:00:00' AS Time), 4, 5, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (52, CAST(N'2026-03-25' AS Date), CAST(N'09:30:00' AS Time), 5, 1, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (53, CAST(N'2026-03-25' AS Date), CAST(N'10:00:00' AS Time), 14, 2, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (54, CAST(N'2026-03-25' AS Date), CAST(N'10:30:00' AS Time), 13, 3, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (55, CAST(N'2026-03-25' AS Date), CAST(N'11:00:00' AS Time), 8, 4, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (56, CAST(N'2026-03-23' AS Date), CAST(N'09:00:00' AS Time), 4, 3, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (57, CAST(N'2026-03-23' AS Date), CAST(N'09:30:00' AS Time), 5, 4, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (58, CAST(N'2026-03-23' AS Date), CAST(N'10:00:00' AS Time), 15, 5, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (59, CAST(N'2026-03-23' AS Date), CAST(N'10:30:00' AS Time), 11, 1, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (60, CAST(N'2026-03-23' AS Date), CAST(N'11:00:00' AS Time), 8, 2, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (61, CAST(N'2026-03-27' AS Date), CAST(N'09:00:00' AS Time), 4, 1, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (62, CAST(N'2026-03-27' AS Date), CAST(N'09:30:00' AS Time), 5, 2, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (63, CAST(N'2026-03-27' AS Date), CAST(N'10:00:00' AS Time), 10, 3, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (64, CAST(N'2026-03-27' AS Date), CAST(N'10:30:00' AS Time), 14, 4, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (65, CAST(N'2026-03-27' AS Date), CAST(N'11:00:00' AS Time), 8, 5, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (66, CAST(N'2026-03-28' AS Date), CAST(N'09:00:00' AS Time), 4, 2, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (67, CAST(N'2026-03-28' AS Date), CAST(N'09:30:00' AS Time), 5, 3, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (68, CAST(N'2026-03-28' AS Date), CAST(N'10:00:00' AS Time), 10, 4, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (69, CAST(N'2026-03-28' AS Date), CAST(N'10:30:00' AS Time), 9, 5, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (70, CAST(N'2026-03-28' AS Date), CAST(N'11:00:00' AS Time), 8, 1, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (71, CAST(N'2026-03-29' AS Date), CAST(N'09:00:00' AS Time), 4, 3, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 1, 1)
GO
INSERT [dbo].[Randevular] ([Id], [tarih], [Saat], [DoktorId], [HastaId], [Aciklama], [KayitTarihi], [GeldiMi], [OlusturanId]) VALUES (72, CAST(N'2026-03-29' AS Date), CAST(N'09:30:00' AS Time), 5, 4, NULL, CAST(N'2026-03-17T21:16:25.943' AS DateTime), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Randevular] OFF
GO
SET IDENTITY_INSERT [dbo].[Yetkiler] ON 
GO
INSERT [dbo].[Yetkiler] ([Id], [Adi]) VALUES (1, N'admin')
GO
SET IDENTITY_INSERT [dbo].[Yetkiler] OFF
GO
ALTER TABLE [dbo].[Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Doktorlar_Branslar] FOREIGN KEY([BransId])
REFERENCES [dbo].[Branslar] ([Id])
GO
ALTER TABLE [dbo].[Doktorlar] CHECK CONSTRAINT [FK_Doktorlar_Branslar]
GO
ALTER TABLE [dbo].[Klinikler]  WITH CHECK ADD  CONSTRAINT [FK_Klinikler_Doktorlar] FOREIGN KEY([DoktorId])
REFERENCES [dbo].[Doktorlar] ([Id])
GO
ALTER TABLE [dbo].[Klinikler] CHECK CONSTRAINT [FK_Klinikler_Doktorlar]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Kullanicilar] FOREIGN KEY([OlusturanId])
REFERENCES [dbo].[Kullanicilar] ([Id])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Kullanicilar]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Yetkiler] FOREIGN KEY([YetkiId])
REFERENCES [dbo].[Yetkiler] ([Id])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Yetkiler]
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD  CONSTRAINT [FK_Randevular_Doktorlar] FOREIGN KEY([DoktorId])
REFERENCES [dbo].[Doktorlar] ([Id])
GO
ALTER TABLE [dbo].[Randevular] CHECK CONSTRAINT [FK_Randevular_Doktorlar]
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD  CONSTRAINT [FK_Randevular_Hastalar] FOREIGN KEY([HastaId])
REFERENCES [dbo].[Hastalar] ([Id])
GO
ALTER TABLE [dbo].[Randevular] CHECK CONSTRAINT [FK_Randevular_Hastalar]
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD  CONSTRAINT [FK_Randevular_Kullanicilar] FOREIGN KEY([OlusturanId])
REFERENCES [dbo].[Kullanicilar] ([Id])
GO
ALTER TABLE [dbo].[Randevular] CHECK CONSTRAINT [FK_Randevular_Kullanicilar]
GO
