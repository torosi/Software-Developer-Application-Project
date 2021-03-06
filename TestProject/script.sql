USE [master]
GO
/****** Object:  Database [TestProjectDB]    Script Date: 27/03/2022 15:39:06 ******/
CREATE DATABASE [TestProjectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestProjectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TestProjectDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestProjectDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TestProjectDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TestProjectDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestProjectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestProjectDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TestProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestProjectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestProjectDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TestProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestProjectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestProjectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestProjectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestProjectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestProjectDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TestProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [TestProjectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestProjectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestProjectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestProjectDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestProjectDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestProjectDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TestProjectDB] SET QUERY_STORE = OFF
GO
USE [TestProjectDB]
GO
/****** Object:  Table [dbo].[Home]    Script Date: 27/03/2022 15:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[Id] [int] NOT NULL,
	[Key] [varchar](max) NULL,
	[Content] [varchar](max) NULL,
 CONSTRAINT [PK_Home] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Categories]    Script Date: 27/03/2022 15:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Categories](
	[Id] [int] NOT NULL,
	[Product_Category] [varchar](max) NULL,
	[ImgPath] [varchar](max) NULL,
 CONSTRAINT [PK_Product_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (1, N'Box1_Title', N'New Products')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (2, N'Box2_Title', N'Field Events')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (3, N'Box3_Title', N'Latest News')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (4, N'Box4_Title', N'Gallery')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (5, N'Box1_Text', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (6, N'Box2_Text', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (7, N'Box3_Text', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (8, N'Box4_Text', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (9, N'Box1_Button', N'New Products')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (10, N'Box2_Button', N'View Events')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (11, N'Box3_Button', N'Read Article')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (12, N'Box4_Button', N'View Gallery')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (13, N'Offer1_Title', N'Discovery WP PC £20 Cashback')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (14, N'Offer2_Title', N'HR ED Fieldscopes Free Digiscoping Kit')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (15, N'Offer3_Title', N'IS 60 WP Fieldscope Kits Save 25%')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (16, N'Offer_Button', N'View All Offers')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (17, N'Product1_Text', N'Binoculars')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (18, N'Product2_Text', N'Compact Binoculars')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (19, N'Product3_Text', N'Telescopes & Eyepieces')
INSERT [dbo].[Home] ([Id], [Key], [Content]) VALUES (20, N'Product4_Text', N'Observation & Marine')
GO
INSERT [dbo].[Product_Categories] ([Id], [Product_Category], [ImgPath]) VALUES (1, N'Binoculars', N'Product1.png')
INSERT [dbo].[Product_Categories] ([Id], [Product_Category], [ImgPath]) VALUES (2, N'Compact Binoculars', N'Product2.png')
INSERT [dbo].[Product_Categories] ([Id], [Product_Category], [ImgPath]) VALUES (3, N'Telescopes & Eyepieces', N'Product3.png')
INSERT [dbo].[Product_Categories] ([Id], [Product_Category], [ImgPath]) VALUES (4, N'Observation & Marine', N'Product4.png')
GO
USE [master]
GO
ALTER DATABASE [TestProjectDB] SET  READ_WRITE 
GO
