USE [master]
GO
/****** Object:  Database [HastaKayitVeteriner]    Script Date: 23.01.2022 14:35:11 ******/
CREATE DATABASE [HastaKayitVeteriner]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HastaKayitVeteriner', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HastaKayitVeteriner.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HastaKayitVeteriner_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HastaKayitVeteriner_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HastaKayitVeteriner] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HastaKayitVeteriner].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HastaKayitVeteriner] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET ARITHABORT OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HastaKayitVeteriner] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HastaKayitVeteriner] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HastaKayitVeteriner] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HastaKayitVeteriner] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HastaKayitVeteriner] SET  MULTI_USER 
GO
ALTER DATABASE [HastaKayitVeteriner] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HastaKayitVeteriner] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HastaKayitVeteriner] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HastaKayitVeteriner] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HastaKayitVeteriner] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HastaKayitVeteriner] SET QUERY_STORE = OFF
GO
USE [HastaKayitVeteriner]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 23.01.2022 14:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_adi] [nvarchar](100) NULL,
	[sifre] [nvarchar](100) NULL,
	[is_banned] [char](1) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HayvanBilgileri]    Script Date: 23.01.2022 14:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HayvanBilgileri](
	[adi] [nvarchar](50) NULL,
	[turu] [nvarchar](50) NULL,
	[cinsi] [nvarchar](50) NULL,
	[cinsiyet] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciBilgileri]    Script Date: 23.01.2022 14:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciBilgileri](
	[kullanici_id] [int] IDENTITY(1084,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
	[is_banned] [char](1) NULL,
	[telefon_no] [char](14) NULL,
 CONSTRAINT [PK_KullaniciBilgileri] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[randevular]    Script Date: 23.01.2022 14:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[randevular](
	[randevu_id] [int] IDENTITY(1,1) NOT NULL,
	[hasta_adi] [nvarchar](50) NULL,
	[turu] [nvarchar](50) NULL,
	[cinsi] [nvarchar](50) NULL,
	[randevu_tarihi] [nvarchar](50) NULL,
	[not_ekle] [nvarchar](100) NULL,
 CONSTRAINT [PK_randevular] PRIMARY KEY CLUSTERED 
(
	[randevu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [kullanici_adi], [sifre], [is_banned]) VALUES (1, N'yusuf123', N'12345', N'F')
INSERT [dbo].[admin] ([id], [kullanici_adi], [sifre], [is_banned]) VALUES (2, N'batu111', N'54321', N'T')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
INSERT [dbo].[HayvanBilgileri] ([adi], [turu], [cinsi], [cinsiyet]) VALUES (N'sdggfg', N'vbcxvxzc', N'ılukyjh', N'D')
INSERT [dbo].[HayvanBilgileri] ([adi], [turu], [cinsi], [cinsiyet]) VALUES (N'fffffffff', N'ggggggg', N'bbbbbbbbbb', N'E')
GO
SET IDENTITY_INSERT [dbo].[KullaniciBilgileri] ON 

INSERT [dbo].[KullaniciBilgileri] ([kullanici_id], [adi], [soyadi], [sifre], [is_banned], [telefon_no]) VALUES (1, N'batuhan', N'Kahveci', N'123', N'F', N'(539) 556-2269')
INSERT [dbo].[KullaniciBilgileri] ([kullanici_id], [adi], [soyadi], [sifre], [is_banned], [telefon_no]) VALUES (2, N'yusuf can', N'Çakmak', N'321', N'F', N'(501) 332-6451')
INSERT [dbo].[KullaniciBilgileri] ([kullanici_id], [adi], [soyadi], [sifre], [is_banned], [telefon_no]) VALUES (1084, N'Ali Eren', N'Durmuş', N'eren123', N'T', N'(538) 821-3747')
INSERT [dbo].[KullaniciBilgileri] ([kullanici_id], [adi], [soyadi], [sifre], [is_banned], [telefon_no]) VALUES (1085, N'asfdfsfg', N'fsgdfbd', N'123', N'F', N'(111) 111-1111')
INSERT [dbo].[KullaniciBilgileri] ([kullanici_id], [adi], [soyadi], [sifre], [is_banned], [telefon_no]) VALUES (1086, N'aaaaaaaaa', N'bbbbbbbbb', N'321', N'F', N'(666) 666-6666')
INSERT [dbo].[KullaniciBilgileri] ([kullanici_id], [adi], [soyadi], [sifre], [is_banned], [telefon_no]) VALUES (1088, N'batuhan', N'eee', N'123', N'F', N'(539) 556-2269')
SET IDENTITY_INSERT [dbo].[KullaniciBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[randevular] ON 

INSERT [dbo].[randevular] ([randevu_id], [hasta_adi], [turu], [cinsi], [randevu_tarihi], [not_ekle]) VALUES (1, NULL, NULL, NULL, N'2021-01-23', NULL)
INSERT [dbo].[randevular] ([randevu_id], [hasta_adi], [turu], [cinsi], [randevu_tarihi], [not_ekle]) VALUES (2, N'aaa', N'ddd', N'sss', N'30.01.2022', N'ööööööööööööööööö')
SET IDENTITY_INSERT [dbo].[randevular] OFF
GO
USE [master]
GO
ALTER DATABASE [HastaKayitVeteriner] SET  READ_WRITE 
GO
