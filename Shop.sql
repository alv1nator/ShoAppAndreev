USE [master]
GO
/****** Object:  Database [Shop]    Script Date: 01.11.2023 20:05:56 ******/
CREATE DATABASE [Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Shop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Shop] SET QUERY_STORE = ON
GO
ALTER DATABASE [Shop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Shop]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 01.11.2023 20:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01.11.2023 20:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (1, N'Яблоки', 45)
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (2, N'Торт', 310)
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (3, N'Газировка', 75)
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (7, N'Как', 2)
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (8, N'же', 1)
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (9, N'всё', 0)
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (10, N'надоело', 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (1, N'1y3lj8w0viop@outlook.com', N'2L6KZG', N'Савицкая Арина Саввична', N'Администратор')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (2, N'3o698uk5c0rw@tutanota.com', N'uzWC67', N'Мартынов Максим Михайлович', N'Администратор')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (3, N'lx24fvrt1aip@yahoo.com', N'8ntwUp', N'Зубов Александр Дамирович', N'Администратор')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (4, N's8z076vku95j@gmail.com', N'YOyhfR', N'Попов Даниил Олегович', N'Менеджер')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (5, N'n3bxm7f2q5i4@outlook.com', N'RSbvHv', N'Семенов Михаил Никитич', N'Менеджер')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (6, N'r7dztn8a5ihq@mail.com', N'rwVDh9', N'Дмитриева Надежда Вячеславовна', N'Менеджер')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (7, N'vofgck2m39hq@gmail.com', N'LdNyos', N'Воронцова Виктория Саввична', N'Клиент')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (8, N's6q9tevybado@yahoo.com', N'gynQMT', N'Софронов Ярослав Игоревич', N'Клиент')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (9, N'p7wuls3dtq9v@yahoo.com', N'AtnDjr', N'Егоров Артём Евгеньевич', N'Клиент')
INSERT [dbo].[Users] ([Id], [Login], [Password], [FullName], [Role]) VALUES (10, N'rdn04s1u2ckb@mail.com', N'JlFRCZ', N'Ситникова Эмилия Степановна', N'Клиент')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [Shop] SET  READ_WRITE 
GO
