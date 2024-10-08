USE [master]
GO
/****** Object:  Database [FILMLER_DB]    Script Date: 5.09.2024 23:13:22 ******/
CREATE DATABASE [FILMLER_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FILMLER_DB_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FILMLER_DB.mdf' , SIZE = 13312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FILMLER_DB_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FILMLER_DB.ldf' , SIZE = 16064KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FILMLER_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FILMLER_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FILMLER_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FILMLER_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FILMLER_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FILMLER_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FILMLER_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FILMLER_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FILMLER_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FILMLER_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FILMLER_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FILMLER_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FILMLER_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FILMLER_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FILMLER_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FILMLER_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FILMLER_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FILMLER_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FILMLER_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FILMLER_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FILMLER_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FILMLER_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FILMLER_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FILMLER_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FILMLER_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [FILMLER_DB] SET  MULTI_USER 
GO
ALTER DATABASE [FILMLER_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FILMLER_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FILMLER_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FILMLER_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FILMLER_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FILMLER_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [FILMLER_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FILMLER_DB]
GO
/****** Object:  Table [dbo].[Calisanlar]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calisanlar](
	[calisan_id] [int] IDENTITY(1,1) NOT NULL,
	[calisan_ad] [varchar](50) NULL,
	[calisan_soyad] [varchar](50) NULL,
	[cinsiyet] [bit] NULL,
	[medeni_durum] [bit] NULL,
	[dogum_tarihi] [date] NULL,
	[sehir_ID] [int] NULL,
	[universite] [varchar](50) NULL,
	[askerlik_durumu] [bit] NULL,
	[calisan_nickname] [varchar](50) NULL,
	[calisan_passwords] [varchar](50) NULL,
 CONSTRAINT [PK_Calisanlar] PRIMARY KEY CLUSTERED 
(
	[calisan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diller]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diller](
	[dil_id] [int] IDENTITY(1,1) NOT NULL,
	[dil_adi] [varchar](50) NULL,
 CONSTRAINT [PK_Diller] PRIMARY KEY CLUSTERED 
(
	[dil_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminDilleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminDilleri](
	[filmdilleri_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ID] [int] NULL,
	[dil_ID] [int] NULL,
 CONSTRAINT [PK_FilminDilleri] PRIMARY KEY CLUSTERED 
(
	[filmdilleri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminOdulleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminOdulleri](
	[filmodul_id] [int] IDENTITY(1,1) NOT NULL,
	[odul_ID] [int] NULL,
	[film_ID] [int] NULL,
 CONSTRAINT [PK_FilminOdulleri] PRIMARY KEY CLUSTERED 
(
	[filmodul_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminOyunculari]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminOyunculari](
	[filmoyuncu_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ID] [int] NULL,
	[oyuncular_ID] [int] NULL,
 CONSTRAINT [PK_FilminOYUNCULARİ] PRIMARY KEY CLUSTERED 
(
	[filmoyuncu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminSenaristleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminSenaristleri](
	[filmsenaristler_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ID] [int] NULL,
	[senarist_ID] [int] NULL,
 CONSTRAINT [PK_FilminSenaristleri] PRIMARY KEY CLUSTERED 
(
	[filmsenaristler_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminSirketleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminSirketleri](
	[filmsirket_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ID] [int] NULL,
	[sirket_ID] [int] NULL,
 CONSTRAINT [PK_FilminSirketleri] PRIMARY KEY CLUSTERED 
(
	[filmsirket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminTurleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminTurleri](
	[filmturleri_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ID] [int] NULL,
	[tur_ID] [int] NULL,
 CONSTRAINT [PK_FilminTurleri] PRIMARY KEY CLUSTERED 
(
	[filmturleri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminYapımcılari]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminYapımcılari](
	[filmyapimci_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ID] [int] NULL,
	[yapimci_ID] [int] NULL,
 CONSTRAINT [PK_FilminYapımcılari] PRIMARY KEY CLUSTERED 
(
	[filmyapimci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilminYonetmenleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilminYonetmenleri](
	[filmyonetmenleri_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ID] [int] NULL,
	[yonetmen_ID] [int] NULL,
 CONSTRAINT [PK_FilminYonetmenleri] PRIMARY KEY CLUSTERED 
(
	[filmyonetmenleri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[film_id] [int] IDENTITY(1,1) NOT NULL,
	[film_ad] [varchar](50) NOT NULL,
	[puan] [float] NULL,
	[sure] [int] NULL,
	[yil] [date] NULL,
	[sinirlama yasi] [nchar](10) NULL,
 CONSTRAINT [PK_Flimler] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[kullanici_id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_ad] [varchar](50) NULL,
	[kullanici_soyad] [varchar](50) NULL,
	[passwords] [varchar](50) NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loglar]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loglar](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_ad] [varchar](50) NULL,
	[islem_tipi] [varchar](50) NULL,
	[veri] [varchar](50) NULL,
	[tarih] [datetime] NULL,
	[tablo_adi] [varchar](50) NULL,
 CONSTRAINT [PK_Loglar] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oduller]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oduller](
	[odul_id] [int] IDENTITY(1,1) NOT NULL,
	[odul_ad] [varchar](50) NOT NULL,
	[odul_turu] [varchar](50) NULL,
 CONSTRAINT [PK_Oduller] PRIMARY KEY CLUSTERED 
(
	[odul_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oyuncular]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oyuncular](
	[oyuncular_id] [int] IDENTITY(1,1) NOT NULL,
	[oyuncu_ad] [varchar](50) NOT NULL,
	[oyuncu_soyad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Oyuncular] PRIMARY KEY CLUSTERED 
(
	[oyuncular_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sehirler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehirler](
	[sehir_id] [int] IDENTITY(1,1) NOT NULL,
	[sehir_adi] [varchar](50) NULL,
 CONSTRAINT [PK_Sehirler] PRIMARY KEY CLUSTERED 
(
	[sehir_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Senaristler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Senaristler](
	[senarist_id] [int] IDENTITY(1,1) NOT NULL,
	[senarist_ad] [varchar](50) NULL,
	[senarist_soyad] [varchar](50) NULL,
 CONSTRAINT [PK_Senaristler] PRIMARY KEY CLUSTERED 
(
	[senarist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sirketler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sirketler](
	[sirket_id] [int] IDENTITY(1,1) NOT NULL,
	[sirket_adi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sirketler] PRIMARY KEY CLUSTERED 
(
	[sirket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turler](
	[tur_id] [int] IDENTITY(1,1) NOT NULL,
	[tur_adi] [varchar](50) NULL,
 CONSTRAINT [PK_Turler] PRIMARY KEY CLUSTERED 
(
	[tur_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yapimcilar]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yapimcilar](
	[yapimci_id] [int] IDENTITY(1,1) NOT NULL,
	[yapimci_ad] [varchar](50) NOT NULL,
	[yapimci_soyad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Yapimcilar] PRIMARY KEY CLUSTERED 
(
	[yapimci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetmenler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetmenler](
	[yonetmen_id] [int] IDENTITY(1,1) NOT NULL,
	[yonetmen_ad] [varchar](50) NOT NULL,
	[yonetmen_soyad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Yonetmen] PRIMARY KEY CLUSTERED 
(
	[yonetmen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Loglar] ADD  CONSTRAINT [DF_Loglar_tarih]  DEFAULT (getdate()) FOR [tarih]
GO
ALTER TABLE [dbo].[FilminDilleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminDilleri_Diller] FOREIGN KEY([dil_ID])
REFERENCES [dbo].[Diller] ([dil_id])
GO
ALTER TABLE [dbo].[FilminDilleri] CHECK CONSTRAINT [FK_FilminDilleri_Diller]
GO
ALTER TABLE [dbo].[FilminDilleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminDilleri_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminDilleri] CHECK CONSTRAINT [FK_FilminDilleri_Filmler]
GO
ALTER TABLE [dbo].[FilminOdulleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminOdulleri_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminOdulleri] CHECK CONSTRAINT [FK_FilminOdulleri_Filmler]
GO
ALTER TABLE [dbo].[FilminOdulleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminOdulleri_Oduller] FOREIGN KEY([odul_ID])
REFERENCES [dbo].[Oduller] ([odul_id])
GO
ALTER TABLE [dbo].[FilminOdulleri] CHECK CONSTRAINT [FK_FilminOdulleri_Oduller]
GO
ALTER TABLE [dbo].[FilminOyunculari]  WITH CHECK ADD  CONSTRAINT [FK_FilminOyunculari_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminOyunculari] CHECK CONSTRAINT [FK_FilminOyunculari_Filmler]
GO
ALTER TABLE [dbo].[FilminOyunculari]  WITH CHECK ADD  CONSTRAINT [FK_FilminOyunculari_Oyuncular] FOREIGN KEY([oyuncular_ID])
REFERENCES [dbo].[Oyuncular] ([oyuncular_id])
GO
ALTER TABLE [dbo].[FilminOyunculari] CHECK CONSTRAINT [FK_FilminOyunculari_Oyuncular]
GO
ALTER TABLE [dbo].[FilminSenaristleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminSenaristleri_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminSenaristleri] CHECK CONSTRAINT [FK_FilminSenaristleri_Filmler]
GO
ALTER TABLE [dbo].[FilminSenaristleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminSenaristleri_Senaristler] FOREIGN KEY([senarist_ID])
REFERENCES [dbo].[Senaristler] ([senarist_id])
GO
ALTER TABLE [dbo].[FilminSenaristleri] CHECK CONSTRAINT [FK_FilminSenaristleri_Senaristler]
GO
ALTER TABLE [dbo].[FilminSirketleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminSirketleri_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminSirketleri] CHECK CONSTRAINT [FK_FilminSirketleri_Filmler]
GO
ALTER TABLE [dbo].[FilminSirketleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminSirketleri_Sirketler] FOREIGN KEY([sirket_ID])
REFERENCES [dbo].[Sirketler] ([sirket_id])
GO
ALTER TABLE [dbo].[FilminSirketleri] CHECK CONSTRAINT [FK_FilminSirketleri_Sirketler]
GO
ALTER TABLE [dbo].[FilminTurleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminTurleri_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminTurleri] CHECK CONSTRAINT [FK_FilminTurleri_Filmler]
GO
ALTER TABLE [dbo].[FilminTurleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminTurleri_Turler] FOREIGN KEY([tur_ID])
REFERENCES [dbo].[Turler] ([tur_id])
GO
ALTER TABLE [dbo].[FilminTurleri] CHECK CONSTRAINT [FK_FilminTurleri_Turler]
GO
ALTER TABLE [dbo].[FilminYapımcılari]  WITH CHECK ADD  CONSTRAINT [FK_FilminYapımcılari_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminYapımcılari] CHECK CONSTRAINT [FK_FilminYapımcılari_Filmler]
GO
ALTER TABLE [dbo].[FilminYapımcılari]  WITH CHECK ADD  CONSTRAINT [FK_FilminYapımcılari_Yapimcilar] FOREIGN KEY([yapimci_ID])
REFERENCES [dbo].[Yapimcilar] ([yapimci_id])
GO
ALTER TABLE [dbo].[FilminYapımcılari] CHECK CONSTRAINT [FK_FilminYapımcılari_Yapimcilar]
GO
ALTER TABLE [dbo].[FilminYonetmenleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminYonetmenleri_Filmler] FOREIGN KEY([film_ID])
REFERENCES [dbo].[Filmler] ([film_id])
GO
ALTER TABLE [dbo].[FilminYonetmenleri] CHECK CONSTRAINT [FK_FilminYonetmenleri_Filmler]
GO
ALTER TABLE [dbo].[FilminYonetmenleri]  WITH CHECK ADD  CONSTRAINT [FK_FilminYonetmenleri_Yonetmenler] FOREIGN KEY([yonetmen_ID])
REFERENCES [dbo].[Yonetmenler] ([yonetmen_id])
GO
ALTER TABLE [dbo].[FilminYonetmenleri] CHECK CONSTRAINT [FK_FilminYonetmenleri_Yonetmenler]
GO
/****** Object:  StoredProcedure [dbo].[GetCalisanlarBySehirAdiORDERBY]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCalisanlarBySehirAdiORDERBY]
AS
BEGIN
    -- Şehir isimleri ile birlikte çalışanları listele
    SELECT
        s.sehir_adi,
        c.calisan_ad,
        c.calisan_soyad
    FROM
        calisanlar c
    INNER JOIN
        sehirler s
    ON
        c.sehir_ID = s.sehir_ID
    ORDER BY
        s.sehir_adi, c.calisan_ad, c.calisan_soyad;
END;
--EXEC getcalisanlarbysehiradiORDERBY
GO
/****** Object:  StoredProcedure [dbo].[GetFilmDetaylari1]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFilmDetaylari1]
AS
BEGIN
    SELECT
        F.Film_ad,
        T.Tur_adi,
        F.Puan,
        F.Sure,
        F.Yil,
        Y.Yonetmen_ad,
        Y.Yonetmen_soyad,
        O.Oyuncu_ad,
        O.Oyuncu_soyad,
        S.Senarist_Ad,
        S.Senarist_Soyad,
        Ya.Yapimci_ad,
        Ya.Yapimci_Soyad,
        Sr.Sirket_adi,
        Od.Odul_ad,
        Od.Odul_Turu,
        D.Dil_adi
    FROM Filmler F
    LEFT JOIN FilminTurleri Ft ON Ft.Film_ID = F.Film_id
    LEFT JOIN Turler T ON T.Tur_id = Ft.filmturleri_id
    LEFT JOIN FilminYonetmenleri Fy ON Fy.Film_ID = F.Film_id
    LEFT JOIN Yonetmenler Y ON Y.Yonetmen_id = Fy.Yonetmen_id
    LEFT JOIN FilminOyunculari Fo ON Fo.Film_ID = F.Film_id
    LEFT JOIN Oyuncular O ON O.Oyuncular_id = Fo.filmoyuncu_id
    LEFT JOIN FilminSenaristleri Fs ON Fs.Film_ID = F.Film_id
    LEFT JOIN Senaristler S ON S.Senarist_id = Fs.filmsenaristler_id
    LEFT JOIN FilminYapımcılari Fya ON Fya.Film_ID = F.Film_id
    LEFT JOIN Yapimcilar Ya ON Ya.Yapimci_id = Fya.filmyapimci_id
    LEFT JOIN FilminSirketleri Fsr ON Fsr.Film_ID = F.Film_id
    LEFT JOIN Sirketler Sr ON Sr.Sirket_id = Fsr.filmsirket_id
    LEFT JOIN FilminOdulleri Fod ON Fod.Film_ID = F.Film_id
    LEFT JOIN Oduller Od ON Od.Odul_id = Fod.filmodul_id
    LEFT JOIN FilminDilleri Fd ON Fd.Film_ID = F.Film_id
    LEFT JOIN Diller D ON D.Dil_id = Fd.filmdilleri_id
    ORDER BY F.Film_ad
END
GO
/****** Object:  StoredProcedure [dbo].[Inserttestsorgu]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Inserttestsorgu]
(
    @Film_ad VARCHAR(50),
    @Puan FLOAT,
    @Sure INT,
    @Yil DATE,
    @Odul_ID INT = NULL,
    @Sayisi INT = NULL,
    @Fdilleri_id INT = NULL,
    @Dil_ID INT = NULL,
    @Foyuncu_id INT = NULL,
    @Oyuncular_ID INT = NULL,
    @Fsenarisler_id INT = NULL,
    @Senarist_ID INT = NULL,
    @FSinirlamalari_id INT = NULL,
    @Sinirlama_ID INT = NULL,
    @Fsirket_id INT = NULL,
    @Sirket_ID INT = NULL,
    @Fturleri_id INT = NULL,
    @Tur_ID INT = NULL,
    @Fyapimci_id INT = NULL,
    @Yapımcı_ID INT = NULL, 
    @Fyonetmenleri_id INT = NULL,
    @Yonetmen_ID INT = NULL
)
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        INSERT INTO Filmler (Film_ad, Puan, Sure, Yil)
        VALUES (@Film_ad, @Puan, @Sure, @Yil);
        DECLARE @Film_ID INT;
        SET @Film_ID = SCOPE_IDENTITY();

        IF @Odul_ID IS NOT NULL AND @Sayisi IS NOT NULL
        BEGIN
            INSERT INTO FilminOdulleri (Film_ID, Odul_ID, Sayisi)
            VALUES (@Film_ID, @Odul_ID, @Sayisi);
        END

        IF @Fdilleri_id IS NOT NULL AND @Dil_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminDilleri(Film_ID, Fdilleri_id, Dil_ID)
            VALUES (@Film_ID, @Fdilleri_id, @Dil_ID);
        END

        IF @Foyuncu_id IS NOT NULL AND @Oyuncular_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminOyunculari(Film_ID, Foyuncu_id, Oyuncular_ID)
            VALUES (@Film_ID, @Foyuncu_id, @Oyuncular_ID);
        END

        IF @Fsenarisler_id IS NOT NULL AND @Senarist_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminSenaristleri(Film_ID, Fsenarisler_id, Senarist_ID)
            VALUES (@Film_ID, @Fsenarisler_id, @Senarist_ID);
        END

        IF @FSinirlamalari_id IS NOT NULL AND @Sinirlama_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminSinirlamalari(Film_ID, FSinirlamalari_id, Sinirlama_ID)
            VALUES (@Film_ID, @FSinirlamalari_id, @Sinirlama_ID);
        END

        IF @Fsirket_id IS NOT NULL AND @Sirket_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminSirketleri(Film_ID, Fsirket_id, Sirket_ID)
            VALUES (@Film_ID, @Fsirket_id, @Sirket_ID);
        END

        IF @Fturleri_id IS NOT NULL AND @Tur_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminTurleri(Film_ID, Fturleri_id, Tur_ID)
            VALUES (@Film_ID, @Fturleri_id, @Tur_ID);
        END

        IF @Fyapimci_id IS NOT NULL AND @Yapımcı_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminYapımcılari(Film_ID, Fyapimci_id, Yapımcı_ID)
            VALUES (@Film_ID, @Fyapimci_id, @Yapımcı_ID);
        END

        IF @Fyonetmenleri_id IS NOT NULL AND @Yonetmen_ID IS NOT NULL
        BEGIN
            INSERT INTO FilminYonetmenleri(Film_ID, Fyonetmenleri_id, Yonetmen_ID)
            VALUES (@Film_ID, @Fyonetmenleri_id, @Yonetmen_ID);
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Adminikontrol]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Adminikontrol]
    @calisan_nickname VARCHAR(50),
    @calisan_passwords VARCHAR(50)
AS
BEGIN
    SELECT calisan_nickname, calisan_passwords
    FROM Calisanlar
    WHERE calisan_nickname = @calisan_nickname and calisan_passwords = @calisan_passwords
END

 --exec sp_Adminikontrol 'Z', '1'
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteDil]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteDil] (
@dil_adi VARCHAR(50)
)
AS
BEGIN
	DELETE FROM Diller
	WHERE dil_adi = @dil_adi;
	 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete Dil',@dil_adi)
END

--exec sp_DeleteDil 'ispanyolca'
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFilm]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteFilm]
(
    @film_id INT
)
AS
BEGIN
    DECLARE @film_adi VARCHAR(50)

    SET @film_adi = (SELECT film_ad FROM Filmler WHERE film_id = @film_id)

    BEGIN TRANSACTION;

    BEGIN TRY
        DELETE FROM FilminDilleri WHERE film_id = @film_id;
        DELETE FROM FilminOyunculari WHERE film_id = @film_id;
        DELETE FROM FilminSenaristleri WHERE film_id = @film_id;
        DELETE FROM FilminOdulleri WHERE film_id = @film_id;
        DELETE FROM FilminSirketleri WHERE film_id = @film_id;
        DELETE FROM FilminTurleri WHERE film_id = @film_id;
        DELETE FROM FilminYapımcılari WHERE film_id = @film_id;
        DELETE FROM FilminYonetmenleri WHERE film_id = @film_id;

        DELETE FROM Filmler WHERE film_id = @film_id;

        INSERT INTO Loglar (kullanici_ad, islem_tipi, veri, tablo_adi)
        VALUES ('kadir', 'Delete', @film_adi, 'Filmler')

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
-- exec [dbo].[sp_DeleteFilm] @film_id = 72;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFilminOdulleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteFilminOdulleri]
(
    @filmodul_id INT
)
AS
BEGIN
    DELETE FROM FilminOdulleri
    WHERE filmodul_id = @filmodul_id;
	 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete Filmin Odulleri',@filmodul_id)
END;
--exec [dbo].[sp_DeleteFilminOdulleri]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFilminOyunculari]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteFilminOyunculari]
(
    @filmoyuncu_id INT
)
AS
BEGIN
    DELETE FROM FilminOyunculari
    WHERE filmoyuncu_id = @filmoyuncu_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri,tablo_adi)
		              VALUES ('kadir','Delete Filmin Oyunculari',@filmoyuncu_id, 'Filmin Oyuncuları')
END;
--exec [dbo].[sp_DeleteFilminOyunculari]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFilminSirketleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteFilminSirketleri]
(
    @filmsirket_id INT
)
AS
BEGIN
    DELETE FROM FilminSirketleri
    WHERE filmsirket_id = @filmsirket_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri,tablo_adi)
		              VALUES ('kadir','Delete Filmin Sirketleri',@filmsirket_id,' Filmin Sirketleri')
END;
--exec [dbo].[sp_DeleteFilminSirketleri]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFilminTurleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteFilminTurleri]
(
    @filmturleri_id INT
)
AS
BEGIN
    DELETE FROM FilminTurleri
    WHERE filmturleri_id = @filmturleri_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri,tablo_adi)
		              VALUES ('kadir','Delete Film Türleri',@filmturleri_id, 'Filmin Turleri')
END;
--exec [dbo].[sp_DeleteFilminTurleri]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFilminYapimcilari]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteFilminYapimcilari]
(
    @filmyapimci_id INT
)
AS
BEGIN
    DELETE FROM FilminYapımcılari
    WHERE filmyapimci_id = @filmyapimci_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri,tablo_adi)
		              VALUES ('kadir','Delete Filmin Yapimcilari',@filmyapimci_id,'Filmin Yapımcıları')
END
--exec [dbo].[sp_DeleteFilminYapimcilari]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteFilminYonetmenleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteFilminYonetmenleri]
(
    @filmyonetmenleri_id INT
)
AS
BEGIN
    DELETE FROM FilminYonetmenleri
    WHERE @filmyonetmenleri_id = @filmyonetmenleri_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri,tablo_adi)
		              VALUES ('kadir','Delete Filmin Yönetmenleri',@filmyonetmenleri_id,'Filmin Yönetmenleri')
END;
--exec [dbo].[sp_DeleteFilminYonetmenleri]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteOdul]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteOdul]
    @odul_id INT
AS
BEGIN
    DELETE FROM Oduller
    WHERE odul_id = @odul_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete Odul',@odul_id)
END
-- exec [dbo].[sp_DeleteOdul]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteOyuncu]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteOyuncu]
    @oyuncular_id INT
AS
BEGIN
    DELETE FROM Oyuncular
    WHERE oyuncular_id = @oyuncular_id;
		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete Oyuncu',@oyuncular_id)
END

/* EXEC [dbo].[sp_DeleteOyuncu]
    @oyuncular_id = 1;
*/
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSenarist]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteSenarist]
	@senarist_id INT
AS
BEGIN
	DELETE FROM Senaristler
	WHERE senarist_id = @senarist_id;
		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete',@senarist_id)
END

/* exec [dbo].[sp_DeleteSenarist]
	@senarist_id = 
	*/
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSirket]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteSirket]
    @sirket_id INT
AS
BEGIN
    DELETE FROM Sirketler
    WHERE sirket_id = @sirket_id;
	 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete',@sirket_id)
END
--exec [dbo].[sp_DeleteSirket]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteTur]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_DeleteTur] (
@tur_adi VARCHAR(50)
)
AS
BEGIN
	DELETE FROM Turler
	WHERE tur_adi = @tur_adi;
	 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete',@tur_adi)
END
-- exec [dbo].[sp_DeleteTur] 
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteYapimci]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteYapimci]
    @yapimci_id INT
AS
BEGIN
    DELETE FROM Yapimcilar
    WHERE yapimci_id = @yapimci_id;
	 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete',@yapimci_id)
END
--exec [dbo].[sp_DeleteYapimci]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteYonetmen]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteYonetmen]
	@yonetmen_id INT
AS
BEGIN
	DELETE FROM Yonetmenler
	WHERE yonetmen_id = @yonetmen_id;
	 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Delete',@yonetmen_id)
END
--exec [dbo].[sp_DeleteYonetmen] @yonetmen_id = 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCalisanGüncelYas]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCalisanGüncelYas]
AS
BEGIN
SELECT calisan_ad, dogum_tarihi,
       DATEDIFF(year, dogum_tarihi, GETDATE()) - 
       CASE 
           WHEN MONTH(dogum_tarihi) > MONTH(GETDATE()) OR 
                (MONTH(dogum_tarihi) = MONTH(GETDATE()) AND DAY(dogum_tarihi) > DAY(GETDATE())) 
           THEN 1 
           ELSE 0 
       END AS yas
FROM Calisanlar
END
--exec [dbo].[sp_GetCalisanGüncelYas]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCalisanlar]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCalisanlar]
AS
BEGIN
    SELECT 
        UPPER(LEFT(calisan_ad, 1)) + LOWER(SUBSTRING(calisan_ad, 2, LEN(calisan_ad))) AS Isim,
        UPPER(calisan_soyad) AS Soyisim,
        CASE 
            WHEN cinsiyet = 1 THEN 'Beyefendi'
            WHEN cinsiyet = 0 THEN 'Hanımefendi'
            ELSE ''
        END AS Unvan
    FROM 
        Calisanlar;
END;
--exec [dbo].[sp_GetCalisanlar]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCalisanlarBySehir]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCalisanlarBySehir]
(
    @sehir_id int
)
AS
BEGIN
    SELECT 
        sehir_ID,
        COUNT(*) AS CalisanSayisi
    FROM 
        Calisanlar
    WHERE 
        sehir_ID = @sehir_id
    GROUP BY 
        sehir_ID;
    INSERT INTO Loglar (kullanici_ad, islem_tipi, tablo_adi)
    VALUES ('kadir', 'Select', 'Calisanlar');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCalisanlarColonBirlestir]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCalisanlarColonBirlestir]
AS
BEGIN 

SELECT CONCAT(calisan_ad, ' ', calisan_soyad, ' ', cinsiyet, ' ', medeni_durum, ' ', dogum_tarihi, ' ', sehir_ID, ' ', universite, ' ', askerlik_durumu) AS birlesmis_sutun
FROM Calisanlar;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,tablo_adi)
		    VALUES ('kadir','Select', 'Calisanlar')
END
--exec sp_GetCalisanlarColonBirlestir
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCalisanlarSehir]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCalisanlarSehir]
(
@sehir_id int
)
AS
BEGIN

SELECT 
    calisan_ad,
	calisan_soyad,
    sehir_ID
FROM 
    Calisanlar WHERE sehir_ID = @sehir_id

	INSERT INTO Loglar (kullanici_ad,islem_tipi,tablo_adi)
		    VALUES ('kadir','Select', 'Calisanlar')
END 
--exec sp_GetCalisanlarBySehir 58 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCalisanYas]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCalisanYas]
AS
BEGIN
    SELECT
		calisan_ad AS CalisanAdi,
		calisan_soyad AS CalisanSoyad,
		cinsiyet,
		medeni_durum AS medeniHali,
	CASE 
            WHEN YEAR(dogum_tarihi) < 2000 THEN 'Yaşlı'
            WHEN YEAR(dogum_tarihi) BETWEEN 2000 AND 2009 THEN 'Genç'
            WHEN YEAR(dogum_tarihi) BETWEEN 2010 AND 2024 THEN 'Çocuk'
			 ELSE 'Bilinmiyor'
        END AS YasListesi
    FROM 
        Calisanlar;
END;
--exec  [dbo].[sp_GetCalisanYas]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDilSorgulama]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetDilSorgulama]
AS
BEGIN
/*	
	D.dil_adi
FROM filmindilleri FD
LEFT JOIN filmler F ON FD.film_ID = f.Film_id
LEFT JOIN diller D ON D.dil_id = FD.dil_ID
ORDER BY F.film_ad
END 
*/

SELECT dil_adi'text', dil_id'id' FROM Diller
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmAyarlanabilir]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetFilmAyarlanabilir]
(
@tur_id int = null,
@dil_id int = null,
@yonetmen_id int = null,
@yapimci_id int = null,
@oyuncu_id int = null,
@sirket_id int = null,
@senarist_id int = null,
@odul_id int = null
)
as
begin

select  film_ad'Film Adi',
        MAX(puan) AS Puan, 
        MAX(sure) AS Sure, 
        MAX(yil) AS Yil,
		MAX(T.tur_adi) AS Tur,
		MAX(D.dil_adi) AS Dil,
		MAX(SIR.sirket_adi) AS Sirket,
		MAX(OD.odul_ad) AS Odul

from Filmler F
    LEFT JOIN FilminTurleri FT ON FT.film_ID = F.film_id
    LEFT JOIN Turler T ON FT.tur_ID = T.tur_id
	LEFT JOIN FilminDilleri FD ON FD.film_ID = F.film_id
	LEFT JOIN Diller D ON D.dil_id = FD.dil_ID
	LEFT JOIN FilminYonetmenleri FY ON FY.film_ID = F.film_id
	LEFT JOIN Yonetmenler YON ON YON.yonetmen_id = FY.yonetmen_ID
	LEFT JOIN FilminYapımcılari FYA ON FYA.film_ID = F.film_id
	LEFT JOIN Yapimcilar YAP ON YAP.yapimci_id = F.film_id
	LEFT JOIN FilminOyunculari FO ON FO.film_ID = F.film_id
	LEFT JOIN Oyuncular O ON O.oyuncular_id = FO.filmoyuncu_id
	LEFT JOIN FilminSirketleri FSIR ON FSIR.film_ID = F.film_id
	LEFT JOIN Sirketler SIR ON SIR.sirket_id = FSIR.sirket_ID
	LEFT JOIN FilminSenaristleri FSEN ON FSEN.film_ID = F.film_id
	LEFT JOIN Senaristler SEN ON SEN.senarist_id = FSEN.senarist_ID
	LEFT JOIN FilminOdulleri FOD ON FOD.film_ID = F.film_id
	LEFT JOIN Oduller OD ON OD.odul_id = FOD.odul_ID
    WHERE (@tur_id IS NULL OR FT.tur_id = @tur_id)
	AND (@dil_id IS NULL OR FD.dil_id = @dil_id)
	AND (@yonetmen_id IS NULL OR FY.yonetmen_ID = @yonetmen_id)
	AND (@yapimci_id IS NULL OR FYA.yapimci_ID = @yapimci_id)
	AND (@oyuncu_id IS NULL OR FO.oyuncular_ID = @oyuncu_id)
	AND (@sirket_id IS NULL OR FSIR.sirket_ID = @sirket_id)
	AND (@senarist_id IS NULL OR FSEN.senarist_ID = @senarist_id)
	AND (@odul_id IS NULL OR FOD.odul_ID = @odul_id)
    GROUP BY film_ad;
end 

--exec sp_GetFilmAyarlanabilir NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmDetaylari1]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmDetaylari1]
AS
BEGIN
    SELECT
        F.Film_ad,
        T.Tur_adi,
        F.Puan,
        F.Sure,
        F.Yil,
        Y.Yonetmen_ad,
        Y.Yonetmen_soyad,
        O.Oyuncu_ad,
        O.Oyuncu_soyad,
        S.Senarist_Ad,
        S.Senarist_Soyad,
        Ya.Yapimci_ad,
        Ya.Yapimci_Soyad,
        Sr.Sirket_adi,
        Od.Odul_ad,
        Od.Odul_Turu,
        D.Dil_adi
    FROM Filmler F
    LEFT JOIN FilminTurleri Ft ON Ft.Film_ID = F.Film_id
    LEFT JOIN Turler T ON T.Tur_id = Ft.filmturleri_id
    LEFT JOIN FilminYonetmenleri Fy ON Fy.Film_ID = F.Film_id
    LEFT JOIN Yonetmenler Y ON Y.Yonetmen_id = Fy.Yonetmen_id
    LEFT JOIN FilminOyunculari Fo ON Fo.Film_ID = F.Film_id
    LEFT JOIN Oyuncular O ON O.Oyuncular_id = Fo.filmoyuncu_id
    LEFT JOIN FilminSenaristleri Fs ON Fs.Film_ID = F.Film_id
    LEFT JOIN Senaristler S ON S.Senarist_id = Fs.filmsenaristler_id
    LEFT JOIN FilminYapımcılari Fya ON Fya.Film_ID = F.Film_id
    LEFT JOIN Yapimcilar Ya ON Ya.Yapimci_id = Fya.filmyapimci_id
    LEFT JOIN FilminSirketleri Fsr ON Fsr.Film_ID = F.Film_id
    LEFT JOIN Sirketler Sr ON Sr.Sirket_id = Fsr.filmsirket_id
    LEFT JOIN FilminOdulleri Fod ON Fod.Film_ID = F.Film_id
    LEFT JOIN Oduller Od ON Od.Odul_id = Fod.filmodul_id
    LEFT JOIN FilminDilleri Fd ON Fd.Film_ID = F.Film_id
    LEFT JOIN Diller D ON D.Dil_id = Fd.filmdilleri_id
    ORDER BY F.Film_ad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmHepsi]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmHepsi]
    @film_ad VARCHAR(50), 
    @puan FLOAT,
    @sure INT,
    @yil DATE,
    @tur_id VARCHAR(MAX), -- Comma-separated list of genre IDs
    @dil_id VARCHAR(MAX), -- Comma-separated list of language IDs
	@oyuncu_id VARCHAR(MAX),
	@senarist_id VARCHAR(MAX),
	@sirket_id VARCHAR(MAX),
	@yapimci_id VARCHAR(MAX),
	@yonetmen_id VARCHAR(MAX)
AS
BEGIN
    -- Insert new film details
    DECLARE @new_film_id INT;
    
    INSERT INTO Filmler (film_ad, puan, sure, yil)
    VALUES (@film_ad, @puan, @sure, @yil);
    
    -- Get the newly inserted film_id
    SET @new_film_id = SCOPE_IDENTITY();
    
    -- Insert new genre links
    IF @tur_id IS NOT NULL AND LEN(@tur_id) > 0
    BEGIN
        INSERT INTO FilminTurleri (film_ID, tur_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@tur_id, ',')
    END

    -- Insert new language links
    IF @dil_id IS NOT NULL AND LEN(@dil_id) > 0
    BEGIN
        INSERT INTO FilminDilleri (film_ID, dil_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@dil_id, ',')
    END

	IF @oyuncu_id IS NOT NULL AND LEN(@oyuncu_id) > 0
    BEGIN
        INSERT INTO FilminOyunculari(film_ID, oyuncular_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@oyuncu_id, ',')
    END

	IF @senarist_id IS NOT NULL AND LEN(@senarist_id) > 0
    BEGIN
        INSERT INTO FilminSenaristleri(film_ID, senarist_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@senarist_id, ',')
    END

	IF @sirket_id IS NOT NULL AND LEN(@sirket_id) > 0
    BEGIN
        INSERT INTO FilminSirketleri(film_ID, sirket_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@sirket_id, ',')
    END

	IF @yapimci_id IS NOT NULL AND LEN(@yapimci_id) > 0
    BEGIN
        INSERT INTO FilminYapimcilari(film_id, yapimci_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@yapimci_id, ',')
    END

	IF @yonetmen_id IS NOT NULL AND LEN(@yonetmen_id) > 0
    BEGIN
        INSERT INTO FilminYonetmenleri(film_ID, yonetmen_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@yonetmen_id, ',')
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmler]
AS
BEGIN
	SELECT 
    F.film_ad
FROM Filmler F
Left JOIN filmler FO ON F.film_id = FO.film_ID
ORDER BY F.film_ad
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmlerByDil]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmlerByDil]
(
@Dil_adi varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
    F.puan,
	D.dil_adi
FROM filmindilleri FD
LEFT JOIN filmler F ON FD.film_ID = F.film_id
LEFT JOIN diller D ON FD.dil_ID = D.dil_id
WHERE D.dil_adi LIKE '%' + @dil_adi + '%'

ORDER BY F.film_ad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmlerByKelimler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmlerByKelimler]
AS
BEGIN
    SELECT 
        film_ID,
        film_ad
    FROM 
        Filmler
    WHERE 
        film_ad LIKE '% de %' OR film_ad LIKE '% de' OR film_ad LIKE 'de %' OR film_ad LIKE '%de%' OR
        film_ad LIKE '% wa%' OR film_ad LIKE '% wa' OR film_ad LIKE 'wa %' OR film_ad LIKE '%wa%'
    ORDER BY 
        film_ad;

    INSERT INTO Loglar (kullanici_ad, islem_tipi, tablo_adi)
    VALUES ('kadir', 'Select', 'Filmler');
END;
--exec [dbo].[sp_GetFilmlerByKelimler]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmlerByOdul]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmlerByOdul]
AS
BEGIN
SELECT film_ID , COUNT(*) AS odul_sayisi
FROM FilminOdulleri
GROUP BY film_ID
ORDER BY odul_sayisi DESC

	INSERT INTO Loglar (kullanici_ad,islem_tipi,tablo_adi)
		    VALUES ('kadir','Select', 'FilminOdulleri')
END

--exec sp_getFilmlerByOdul
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmlerByOdulTop10]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmlerByOdulTop10]
AS
BEGIN
SELECT TOP 10
	film_ID , COUNT(*) AS odul_sayisi
FROM FilminOdulleri
GROUP BY film_ID
ORDER BY odul_sayisi DESC

	INSERT INTO Loglar (kullanici_ad,islem_tipi,tablo_adi)
		    VALUES ('kadir','Select', 'FilminOdulleri')
END

--exec sp_getFilmlerByOdul
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmlerByPuanAraligi]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmlerByPuanAraligi] 
(
    @MinPuan float,
    @MaxPuan float
)
AS
BEGIN
    SELECT 
        F.film_ad,
        F.puan
    FROM filmler F
    WHERE F.puan BETWEEN @MinPuan AND @MaxPuan
	ORDER BY F.puan DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmlerBySureAraligi]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmlerBySureAraligi]
(
    @MinSure int,
    @MaxSure int
)
AS
BEGIN
    SELECT 
        F.film_ad,
        F.sure
    FROM filmler F
    WHERE F.sure BETWEEN @MinSure AND @MaxSure
	ORDER BY F.film_ad
END
--exec [dbo].[sp_GetFilmlerBySureAraligi]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmPuanNull]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmPuanNull]
AS 
BEGIN
    SELECT film_ad
    FROM Filmler
    WHERE puan IS NULL;

    INSERT INTO Loglar (kullanici_ad, islem_tipi, tablo_adi)
    VALUES ('kadir', 'Select', 'Filmler');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmSorgulama]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmSorgulama]
AS
BEGIN
SELECT
	F.film_id,
	F.film_ad,
	F.puan,
	F.sure,
	F.yil
FROM Filmler F
ORDER BY F.film_ad
END
--exec sp_GetFilmSorgulama
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFilmSüre]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFilmSüre]
AS
BEGIN
    SELECT
		film_ad AS FilmAdi,
		sure AS FilmSüresi,
	CASE 
            WHEN sure  < 50 THEN 'Kısa Film'
            WHEN sure BETWEEN 50 AND 200 THEN 'Orta'
			 ELSE 'Uzun Film'
        END AS FilmSüreListesi
    FROM 
        Filmler;
END;
--exec [dbo].[sp_GetFilmSüre]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOdulluFilmler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_GetOdulluFilmler]
AS
BEGIN
	SELECT 
    F.film_ad,
	O.odul_ad,
	O.odul_Turu,
	FO.sayisi
FROM filmler F
Left JOIN filminodulleri FO ON F.film_id = FO.film_ID
Left JOIN oduller O ON Fo.fodul_ID = O.odul_id

ORDER BY F.film_ad
END

--exec [dbo].[sp_GetOdulluFilmler]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOdulSorgulama]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetOdulSorgulama]
(
@odul_ad varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
	O.odul_ad,
	O.odul_Turu
FROM filminodulleri Fo
INNER JOIN filmler F ON Fo.film_ID = F.film_id
INNER JOIN oduller O ON Fo.fodul_id = O.odul_id
WHERE O.odul_ad LIKE '%' + @odul_ad + '%'
ORDER BY F.film_ad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOyuncularSorgu]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetOyuncularSorgu]
(
@oyuncu_ad varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
    O.oyuncu_ad,
	O.oyuncu_soyad
FROM filminoyunculari Fo
Left JOIN filmler F ON Fo.film_ID = F.film_id
Left JOIN oyuncular O ON Fo.foyuncu_id = O.oyuncular_id
WHERE O.oyuncu_ad LIKE '%' + @oyuncu_ad + '%'
ORDER BY F.film_ad
END


--exec [dbo].[sp_GetOyuncularSorgu] 'Kari'
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSenaristSorgulamak]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetSenaristSorgulamak] 
(
@senarist_ad varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
    F.puan,
    S.senarist_ad,
	S.senarist_soyad

FROM filminsenaristleri FS
LEFT JOIN filmler F ON FS.film_ID = F.film_id
LEFT JOIN senaristler S
ON FS.senarist_ID = S.senarist_id
WHERE S.senarist_ad LIKE '%' + @senarist_ad + '%'
ORDER BY F.film_ad
END

--exec [dbo].[sp_GetSenaristSorgulamak] 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSinirlamaSorgu]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetSinirlamaSorgu]
(
@Sinirlama_adi varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
    S.sinirlama_adi
FROM filminsinirlamalari Fs
Left JOIN filmler F ON Fs.film_ID = F.film_id
Left JOIN sinirlamalar S ON Fs.fsinirlamalari_id = S.sinirlama_id
WHERE S.sinirlama_adi LIKE '%' + sinirlama_adi + '%'
ORDER BY F.film_ad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSirketlerSorgu]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetSirketlerSorgu]
(
@sirket_adi varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
    S.sirket_adi
FROM filminsirketleri Fs
Left JOIN filmler F ON Fs.film_ID = F.film_id
Left JOIN sirketler S ON Fs.fsirket_id = S.sirket_id
WHERE S.sirket_adi LIKE '%' + @sirket_adi + '%'
ORDER BY F.film_ad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSirketSorgulamak]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetSirketSorgulamak] 
(
@sirket_adi varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
	S.sirket_adi
	
FROM filminsirketleri FSi
INNER JOIN filmler F ON FSi.film_ID = F.film_id
INNER JOIN sirketler S ON FSi.sirket_ID = Fsi.sirket_id
WHERE S.sirket_adi LIKE '%' + @sirket_adi + '%'
ORDER BY F.film_ad
END

--exec [dbo].[sp_GetSirketSorgulamak] 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetToplamFilmSüresi]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetToplamFilmSüresi]
AS
BEGIN
    SELECT SUM(sure) AS ToplamSure
    FROM Filmler;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTopOyuncular]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTopOyuncular]
AS
BEGIN
    SELECT TOP 5
        oyuncular_ID,
        COUNT(*) AS FilminOyunculari
    FROM
        FilminOyunculari
    GROUP BY
        oyuncular_ID
    ORDER BY
        FilminOyunculari DESC;

    INSERT INTO Loglar (kullanici_ad, islem_tipi, tablo_adi)
    VALUES ('kadir', 'Select', 'FilminOyunculari');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTurSorgulama]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTurSorgulama]
AS
BEGIN
SELECT tur_adi'text', tur_id'id' FROM Turler
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetYapimcilarSorgu]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetYapimcilarSorgu] 
(
@yapimci_ad varchar(50)
)
AS
BEGIN
	SELECT 
    F.film_ad,
	Y.yapimci_ad,
	Y.yapimci_Soyad
FROM filminyapimcilari Fy
Left JOIN filmler F ON Fy.film_ID = F.film_id
Left JOIN yapimcilar Y ON Fy.yapimci_ID = Y.yapimci_id
WHERE Y.yapimci_ad LIKE '%' + @yapimci_ad + '%'
ORDER BY F.film_ad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetYilSorgulama]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetYilSorgulama]
(
    @yil date
)
AS
BEGIN
    SELECT 
        F.film_ad,
        F.yil,
        F.puan,
        T.tur_adi
    FROM filminturleri FT
    INNER JOIN filmler F ON FT.film_ID = F.film_id
    INNER JOIN turler T ON FT.tur_ID = T.tur_id
    WHERE YEAR(F.yil) = YEAR(@yil)
    ORDER BY F.film_ad;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetYonetmenSorgulama]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetYonetmenSorgulama] 

/*(
@Yonetmen_adi varchar(50)
)
AS
BEGIN
	SELECT 



    F.Film_ad,
 
    Y.Yonetmen_ad,
	Y.Yonetmen_soyad
	
FROM FilminYonetmenleri Fy
INNER JOIN Filmler F ON Fy.Film_ID = F.Film_id
INNER JOIN Yonetmenlerler Y ON Fy.Yonetmen_ID = Fy.Yonetmen_id
WHERE Y.Yonetmen_ad LIKE '%' + @Yonetmen_adi + '%' */
AS
BEGIN
SELECT yonetmen_ad'text',yonetmen_soyad'text', yonetmen_id'id' FROM Yonetmenler
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCalisan]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertCalisan]
(
@calisan_ad VARCHAR(50),
@calisan_soyad VARCHAR(50),
@cinsiyet bit,
@medeni_durum bit,
@dogum_tarihi DATE,
@sehir_ID int,
@universite VARCHAR(50),
@askerlik_durumu bit
)
AS
BEGIN
INSERT INTO Calisanlar(calisan_ad,calisan_soyad ,cinsiyet, medeni_durum,dogum_tarihi,sehir_ID,universite,askerlik_durumu)
VALUES(@calisan_ad,@calisan_soyad,@cinsiyet,@medeni_durum,@dogum_tarihi,@sehir_ID,@universite,@askerlik_durumu)
  INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',@calisan_ad+' '+@calisan_soyad)
END
-- exec [dbo].[sp_InsertCalisan]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCalisanEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertCalisanEkle] (
    @calisan_ad VARCHAR(50),
    @calisan_soyad VARCHAR(50),
    @cinsiyet VARCHAR(50),
    @medeni_durum bit,
    @dogum_tarihi date,
    @sehir_ID INT, 
    @universite VARCHAR(50),
    @askerlik_durumu bit
)
AS
BEGIN
    INSERT INTO Calisanlar(
        calisan_ad,
        calisan_soyad,
        cinsiyet,
        medeni_durum,
        dogum_tarihi,
        sehir_ID,
        universite,
        askerlik_durumu
    )
    VALUES (
        @calisan_ad,
        @calisan_soyad,
        @cinsiyet,
        @medeni_durum,
        @dogum_tarihi,
        @sehir_ID,
        @universite,
        @askerlik_durumu
    );
    INSERT INTO Loglar (kullanici_ad,islem_tipi,veri,tablo_adi)
    VALUES ('kadir','Insert',@calisan_ad,'Calisanlar');
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertDilEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertDilEkle] (
@dil_adi VARCHAR(50)
)
AS
BEGIN
 INSERT INTO Diller(dil_adi)
 VALUES (@dil_adi);
  INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',@dil_adi)
END
--exec [dbo].[sp_InsertDilEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilmEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertFilmEkle] (
@film_ad VARCHAR(50),
@puan FLOAT,
@sure int,
@yil DATE
)
AS
BEGIN
 INSERT INTO Filmler(film_ad,puan,sure,yil)
 VALUES (@film_ad,@puan,@sure,@yil);
   INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',@film_ad)
END
--exec [dbo].[sp_InsertFilmEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilmHepsi]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilmHepsi]
    @film_ad VARCHAR(50), 
    @puan FLOAT,
    @sure INT,
    @yil DATE,
    @tur_id VARCHAR(MAX), -- Comma-separated list of genre IDs
    @dil_id VARCHAR(MAX), -- Comma-separated list of language IDs
	@oyuncu_id VARCHAR(MAX),
	@senarist_id VARCHAR(MAX),
	@sirket_id VARCHAR(MAX),
	@yapimci_id VARCHAR(MAX),
	@yonetmen_id VARCHAR(MAX)
AS
BEGIN
    -- Insert new film details
    DECLARE @new_film_id INT;
    
    INSERT INTO Filmler (film_ad, puan, sure, yil)
    VALUES (@film_ad, @puan, @sure, @yil);
    
    -- Get the newly inserted film_id
    SET @new_film_id = SCOPE_IDENTITY();
    
    -- Insert new genre links
    IF @tur_id IS NOT NULL AND LEN(@tur_id) > 0
    BEGIN
        INSERT INTO FilminTurleri (film_ID, tur_id)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@tur_id, ',')
    END

    -- Insert new language links
    IF @dil_id IS NOT NULL AND LEN(@dil_id) > 0
    BEGIN
        INSERT INTO FilminDilleri (film_ID, dil_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@dil_id, ',')
    END

	IF @oyuncu_id IS NOT NULL AND LEN(@oyuncu_id) > 0
    BEGIN
        INSERT INTO FilminOyunculari(film_ID, oyuncular_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@oyuncu_id, ',')
    END

	IF @senarist_id IS NOT NULL AND LEN(@senarist_id) > 0
    BEGIN
        INSERT INTO FilminSenaristleri(film_ID, senarist_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@senarist_id, ',')
    END

	IF @sirket_id IS NOT NULL AND LEN(@sirket_id) > 0
    BEGIN
        INSERT INTO FilminSirketleri(film_ID, sirket_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@sirket_id, ',')
    END

	IF @yapimci_id IS NOT NULL AND LEN(@yapimci_id) > 0
    BEGIN
        INSERT INTO FilminYapımcılari(film_ID, yapimci_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@yapimci_id, ',')
    END

	IF @yonetmen_id IS NOT NULL AND LEN(@yonetmen_id) > 0
    BEGIN
        INSERT INTO FilminYonetmenleri(film_ID, yonetmen_ID)
        SELECT @new_film_id, value
        FROM STRING_SPLIT(@yonetmen_id, ',')
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilmHepsi1]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilmHepsi1]
    @film_ad VARCHAR(100),
    @puan FLOAT,
    @sure INT,
    @yil DATETIME,
    @tur_id INT,
    @sirket VARCHAR(100),
    @oyuncu VARCHAR(100),
    @yonetmen VARCHAR(100),
    @senarist VARCHAR(100),
    @dil VARCHAR(50)
AS
BEGIN
    INSERT INTO Film (film_ad, puan, sure, yil, tur_id, sirket, oyuncu, yonetmen, senarist, dil)
    VALUES (@film_ad, @puan, @sure, @yil, @tur_id, @sirket, @oyuncu, @yonetmen, @senarist, @dil);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminDilleriEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilminDilleriEkle](
@film_id VARCHAR(50),
@dil_id VARCHAR(50)
)
AS
BEGIN
INSERT INTO FilminDilleri(film_ID,dil_ID)
VALUES (@film_id,@dil_id);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_id + '' + @dil_id))

END
--exec [dbo].[sp_InsertFilminDilleriEkle] 5,10
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminOdulleriEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilminOdulleriEkle](
@film_id VARCHAR(50),
@odul_id VARCHAR(50)
)
AS
BEGIN
INSERT INTO FilminOdulleri(film_ID,odul_ID)
VALUES (@film_id,@odul_id);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_id + '' + @odul_id))
END
--exec [dbo].[sp_InsertFilminOdulleriEkle] 10,35

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminOyunculariEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilminOyunculariEkle](
@film_id VARCHAR(50),
@oyuncu_id VARCHAR(50)
)
AS
BEGIN
INSERT INTO FilminOyunculari(film_ID,oyuncular_ID)
VALUES (@film_id,@oyuncu_id);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_id + '' + @oyuncu_id))
END
--exec [dbo].[sp_InsertFilminOyunculariEkle] 5,10
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminSenaristleriEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilminSenaristleriEkle](
@film_id INT,
@senarist_id INT
)
AS
BEGIN
INSERT INTO FilminSenaristleri(film_ID,senarist_ID)
VALUES (@film_id,@senarist_id);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_id + '' + @senarist_id))
END
--exec [dbo].[sp_InsertFilminSenaristleriEkle] 5,10
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminSirketleriEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilminSirketleriEkle](
@film_id INT,
@sirket_id INT
)
AS
BEGIN
INSERT INTO FilminSirketleri(film_ID,sirket_ID)
VALUES (@film_id,@sirket_id);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_id + '' + @sirket_id))
END
--exec [dbo].[sp_InsertFilminSirketleriEkle] 10,50
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminTurleriEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertFilminTurleriEkle] (
@film_ID int,
@tur_ID int

)

AS
BEGIN


 INSERT INTO FilminTurleri(film_ID, tur_ID)
 VALUES (@film_ID, @tur_ID);
    		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_ID + ' ' + @tur_ID))
END
--exec sp_InstertFilminTurleriEkle
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminYapımcılariEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilminYapımcılariEkle](
@film_id INT,
@yapimci_id INT
)
AS
BEGIN
INSERT INTO FilminYapımcılari(film_ID,yapimci_ID)
VALUES (@film_id,@yapimci_id);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_id + '' + @yapimci_id))
END
--exec [dbo].[sp_InsertFilminYapımcılariEkle] 10,35
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFilminYonetmenleriEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertFilminYonetmenleriEkle](
@film_id INT,
@yonetmen_id INT
)
AS
BEGIN
INSERT INTO FilminYonetmenleri(film_ID,yonetmen_ID)
VALUES (@film_id,@yonetmen_id);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_id + '' + @yonetmen_id))
END
--exec [dbo].[sp_InsertFilminYonetmenleriEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOdulEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertOdulEkle] (
@odul_adi VARCHAR(50)
)
AS
BEGIN
 INSERT INTO Oduller(odul_ad)
 VALUES (@odul_adi);
  INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',@odul_adi)
END
--exec [dbo].[sp_InsertSirketEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOyuncuEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertOyuncuEkle] (
@oyuncu_adi VARCHAR(50),
@oyuncu_soyadi VARCHAR(50)
)
AS
BEGIN
 INSERT INTO oyuncular(oyuncu_ad, oyuncu_soyad)
 VALUES (@oyuncu_adi, @oyuncu_soyadi);
   INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@oyuncu_adi + '' + @oyuncu_soyadi))
END
--exec [dbo].[sp_InsertOyuncuEkle] 'test';
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSenaristEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertSenaristEkle](
@senarist_ad VARCHAR(50),
@senarist_soyad VARCHAR(50)
)
AS
BEGIN
INSERT INTO Senaristler(senarist_ad, senarist_soyad)
VALUES (@senarist_ad, @senarist_soyad);
INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@senarist_ad + '' + @senarist_soyad))
END
--exec [dbo].[sp_InsertSenaristEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSirketEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertSirketEkle] (
@sirket_adi VARCHAR(50)
)
AS
BEGIN
 INSERT INTO sirketler(sirket_adi)
 VALUES (@sirket_adi);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',@sirket_adi)
END
--exec [dbo].[sp_InsertSirketEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertTurEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertTurEkle] (
@tur_adi VARCHAR(50)
)
AS
BEGIN
 INSERT INTO turler(tur_adi)
           VALUES (@tur_adi);
		   INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',@tur_adi)
END
--exec InsertTurEkle 'Dram'
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertYapimciEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertYapimciEkle](
@yapimci_ad VARCHAR(50),
@yapimci_soyad VARCHAR(50)

)
AS
BEGIN
INSERT INTO yapimcilar(yapimci_ad, yapimci_Soyad)
VALUES (@yapimci_ad, @yapimci_Soyad);
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@yapimci_ad + '' + @yapimci_soyad))
END
--exec [dbo].[sp_InsertYapimciEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertYonetmenEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertYonetmenEkle](
@yonetmen_adi   VARCHAR(50),
@yonetmen_soyadi VARCHAR(50)
)
AS
BEGIN
 INSERT INTO yonetmenler(yonetmen_ad,yonetmen_soyad)
 VALUES (@yonetmen_adi,@yonetmen_soyadi);
  INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@yonetmen_adi + '' + @yonetmen_soyadi))
END
--exec [dbo].[sp_InsertYonetmenEkle]
GO
/****** Object:  StoredProcedure [dbo].[sp_InstertFilminTurleriEkle]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InstertFilminTurleriEkle] (
@film_ID int,
@tur_ID int

)

AS
BEGIN


 INSERT INTO FilminTurleri(film_ID, tur_ID)
 VALUES (@film_ID, @tur_ID);
    		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Insert',(@film_ID + ' ' + @tur_ID))
END
--exec sp_InstertFilminTurleriEkle
GO
/****** Object:  StoredProcedure [dbo].[sp_Kullanicikontrol]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Kullanicikontrol]
    @kullanici_nickname VARCHAR(50),
    @passwords VARCHAR(50)
AS
BEGIN
    SELECT @kullanici_nickname, passwords
    FROM Kullanicilar
    WHERE @kullanici_nickname = @kullanici_nickname and passwords = @passwords
END

 --exec sp_Kullanicikontrol
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCalisan]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateCalisan]
(
    @calisan_ID INT,
    @calisan_ad VARCHAR(50),
    @calisan_soyad VARCHAR(50),
    @cinsiyet VARCHAR(50),
    @medeni_durum BIT,
    @dogum_tarihi DATE,
    @sehir_ID INT, 
    @universite VARCHAR(50),
    @askerlik_durumu BIT
)
AS
BEGIN
    UPDATE Calisanlar
    SET
        calisan_ad = @calisan_ad,
        calisan_soyad = @calisan_soyad,
        cinsiyet = @cinsiyet,
        medeni_durum = @medeni_durum,
        dogum_tarihi = @dogum_tarihi,
        sehir_ID = @sehir_ID,
        universite = @universite,
        askerlik_durumu = @askerlik_durumu
    WHERE
        calisan_ID = @calisan_ID;

    INSERT INTO Loglar (kullanici_ad,islem_tipi,veri,tablo_adi)
    VALUES (
        'kadir',
        'Update',
        @calisan_ad,
        'Calisanlar'
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateDil]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateDil]
	@dil_id INT,
	@dil_adi VARCHAR(50)

AS
BEGIN
	UPDATE Diller
	SET
		dil_adi = @dil_adi
	WHERE dil_id = @dil_id;
	 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@dil_adi + '' + @dil_id))
END
--exec [dbo].[sp_UpdateDil]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilmDetaylari]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateFilmDetaylari]
 (
    @film_id INT,         
    @film_ad VARCHAR(50), 
	@puan float,
	@sure int,
	@yil date
)
AS
BEGIN
    UPDATE Filmler 
    SET film_ad = @film_ad,
		puan = @puan,
		sure = @sure,
		yil = @yil
    WHERE film_id = @film_id;
			   INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update', @film_ad)
END
--exec sp_UpdateFilmDetaylari 74,'Yüzklerin kralı',5,65,'12.02.2000'
/*EXEC UpdateFilmDetaylari 
    @Film_id = 1, 
    @Film_ad = 'Yeni Film Adı', 
    @Puan = 8.7, 
    @Sure = 120, 
    @Yil = '2024-01-01';
	*/
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminDilleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateFilminDilleri] (
@filmdilleri_id int,
@film_ID int,
@dil_ID int

)

AS
BEGIN


UPDATE FilminDilleri 
SET dil_ID = @dil_ID,
	film_ID = @film_ID
WHERE filmdilleri_id = @filmdilleri_id;
	   		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@dil_ID + ' ' + @film_ID))
END
--exec sp_UpdateFilminDilleri
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminOdulleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateFilminOdulleri] (
@filmodul_id int,
@film_ID int,
@odul_ID int

)

AS
BEGIN


UPDATE FilminOdulleri 
SET odul_ID = @odul_ID,
	film_ID = @film_ID
WHERE filmodul_id = @filmodul_id;
	   		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Upddate',(@odul_ID + ' ' + @film_ID))
END
--exec sp_UpdateFilminOdulleri
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminOyunculari]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateFilminOyunculari] (
@filmoyuncu_id int,
@film_ID int,
@oyuncular_ID int
)
AS
BEGIN
UPDATE FilminOyunculari 
SET oyuncular_ID = @oyuncular_ID,
	film_ID = @film_ID
WHERE filmoyuncu_id = @filmoyuncu_id;
INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@filmoyuncu_id + '' + @film_ID + '' + @oyuncular_ID))
END
--exec [dbo].[sp_UpdateFilminOyunculari]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminSenaristler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateFilminSenaristler] (
@fsenaristler_id int,
@film_ID int,
@senarist_ID int
)
AS
BEGIN
UPDATE FilminSenaristleri 
SET senarist_ID = @senarist_ID,
	film_ID = @film_ID
WHERE fsenaristler_id = @fsenaristler_id;
 INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@fsenaristler_id + '' + @film_ID + '' +@senarist_ID))
END
--exec [dbo].[sp_UpdateFilminSenaristler]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminSirketler]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE	 PROC [dbo].[sp_UpdateFilminSirketler] (
@fsirket_id int,
@film_ID int,
@sirket_ID int

)

AS
BEGIN


UPDATE FilminSirketleri
SET sirket_ID = @sirket_ID,
	film_ID = @film_ID
WHERE fsirket_id = @fsirket_id;
	   		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@sirket_ID + ' ' + @film_ID))
END
--exec sp_UpdateFilminSirketler
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminTurleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateFilminTurleri] (
@fturleri_id int,
@film_ID int,
@tur_ID int
)
AS
BEGIN
UPDATE FilminTurleri
SET tur_ID = @tur_ID,
	film_ID = @film_ID
WHERE fturleri_id = @fturleri_id;
INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@fturleri_id + '' + @film_ID + '' +@tur_ID))
END
--exec [dbo].[sp_UpdateFilminTurleri]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminYapimcilari]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateFilminYapimcilari] (
@fyapimci_id int,
@film_ID int,
@yapimci_ID int

)

AS
BEGIN


UPDATE FilminYapimcilari 
SET @yapimci_ID = @yapimci_ID,
	film_ID = @film_ID
WHERE fyapimci_id = @fyapimci_id;
	   		INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@yapimci_ID + ' ' + @film_ID))
END
--exec sp_UpdateFilminYapimcilari
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFilminYonetmenleri]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateFilminYonetmenleri] (
@fyonetmenleri_id int,
@film_ID int,
@yonetmen_ID int
)
AS
BEGIN
UPDATE FilminYonetmenleri 
SET @yonetmen_ID = @yonetmen_ID,
	film_ID = @film_ID
WHERE fyonetmenleri_id = @fyonetmenleri_id;
INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@fyonetmenleri_id + '' + @film_ID + '' +@yonetmen_ID))
END
--exec sp_UpdateFilminYonetmenleri
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateOdul]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateOdul]
	@odul_id INT,
	@odul_ad VARCHAR(50),
	@odul_turu VARCHAR(50)
AS
BEGIN
	UPDATE Oduller
	SET
		odul_ad = @odul_ad,
		odul_turu = @odul_turu
	WHERE odul_id = @odul_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@odul_id + '' + @odul_ad + '' +@odul_turu))
END
-- exec [dbo].[sp_UpdateOdul] 
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateOyuncu]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateOyuncu]
	@oyuncular_id INT,
	@oyuncu_ad VARCHAR(50),
	@oyuncu_soyad VARCHAR(50)
AS
BEGIN
	UPDATE Oyuncular
	SET
		oyuncu_ad = @oyuncu_ad,
		oyuncu_soyad = @oyuncu_soyad
	WHERE oyuncular_id = @oyuncular_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@oyuncular_id + '' + @oyuncu_ad + '' + @oyuncu_soyad))
END
--exec [dbo].[sp_UpdateOyuncu]
		
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSenarist]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateSenarist]
	@senarist_id INT,
	@senarist_ad VARCHAR(50),
	@senarist_soyad VARCHAR(50)
AS
BEGIN
	UPDATE Senaristler
	SET
		senarist_ad = @senarist_ad,
		senarist_soyad = @senarist_soyad
	WHERE senarist_id = @senarist_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@senarist_id + '' + @senarist_ad + '' + @senarist_soyad))
END
--exec [dbo].[sp_UpdateSenarist]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSinirlama]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateSinirlama]
	@sinirlama_id INT,
	@sinirlama_adi VARCHAR(50)

AS
BEGIN
	UPDATE Sinirlamalar
	SET
		sinirlama_adi = @sinirlama_adi
	WHERE sinirlama_id = @sinirlama_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@sinirlama_id + '' + @sinirlama_adi))
END
--exec [dbo].[sp_UpdateSinirlama]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSirket]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateSirket]
	@sirket_id INT,
	@sirket_adi VARCHAR(50)

AS
BEGIN
	UPDATE Sirketler
	SET
		sirket_adi = @sirket_adi
	WHERE sirket_id = @sirket_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@sirket_adi+ '' + @sirket_id))
END
--exec [dbo].[sp_UpdateSirket]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateTur]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateTur]
	@tur_id INT,
	@tur_adi VARCHAR(50)

AS
BEGIN
	UPDATE Turler
	SET
		tur_adi = @tur_adi
	WHERE tur_id = @tur_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@tur_adi+ '' + @tur_id))
END
--exec [dbo].[sp_UpdateTur]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateYapimci]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateYapimci]
	@yapimci_id INT,
	@yapimci_ad VARCHAR(50),
	@yapimci_soyad VARCHAR(50)
AS
BEGIN
	UPDATE Yapimcilar
	SET
		yapimci_ad = @yapimci_ad,
		yapimci_soyad = @yapimci_soyad
	WHERE yapimci_id = @yapimci_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@yapimci_ad + '' + @yapimci_id + '' + @yapimci_soyad))
END
--exec [dbo].[sp_UpdateYapimci] '39','denemee','test';
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateYonetmen]    Script Date: 5.09.2024 23:13:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateYonetmen]
	@yonetmen_id INT,
	@yonetmen_ad VARCHAR(50),
	@yonetmen_soyad VARCHAR(50)
AS
BEGIN
	UPDATE Yonetmenler
	SET
		yonetmen_ad = @yonetmen_ad,
		yonetmen_soyad = @yonetmen_soyad
	WHERE yonetmen_id = @yonetmen_id;
	INSERT INTO Loglar (kullanici_ad,islem_tipi,veri)
		              VALUES ('kadir','Update',(@yonetmen_ad + '' + @yonetmen_id + '' + @yonetmen_soyad))
END
-- exec [dbo].[sp_UpdateYonetmen] 
GO
USE [master]
GO
ALTER DATABASE [FILMLER_DB] SET  READ_WRITE 
GO
