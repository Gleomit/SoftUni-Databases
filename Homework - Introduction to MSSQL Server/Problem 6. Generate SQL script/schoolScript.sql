USE [master]
GO
/****** Object:  Database [School]    Script Date: 6/19/2015 1:33:34 AM ******/
CREATE DATABASE [School]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\School.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'School_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\School_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [School] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School] SET ARITHABORT OFF 
GO
ALTER DATABASE [School] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [School] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School] SET  DISABLE_BROKER 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [School] SET  MULTI_USER 
GO
ALTER DATABASE [School] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [School] SET DELAYED_DURABILITY = DISABLED 
GO
USE [School]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 6/19/2015 1:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes](
	[Name] [varchar](50) NOT NULL,
	[MaxStudents] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 6/19/2015 1:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[PhoneNumber] [bigint] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class0', 24, 1)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class1', 19, 2)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class2', 16, 3)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class3', 28, 4)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class4', 24, 5)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class5', 27, 6)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class6', 18, 7)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class7', 10, 8)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class8', 22, 9)
INSERT [dbo].[Classes] ([Name], [MaxStudents], [id]) VALUES (N'Class9', 24, 10)
SET IDENTITY_INSERT [dbo].[Classes] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student0', 22, 14465477, 2)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student1', 40, 14465477, 3)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student2', 44, 14465477, 4)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student3', 37, 14465477, 5)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student4', 23, 14465477, 6)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student5', 35, 14465477, 7)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student6', 19, 14465477, 8)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student7', 26, 14465477, 9)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student8', 27, 14465477, 10)
INSERT [dbo].[Students] ([Name], [Age], [PhoneNumber], [id]) VALUES (N'Student9', 40, 14465477, 11)
SET IDENTITY_INSERT [dbo].[Students] OFF
USE [master]
GO
ALTER DATABASE [School] SET  READ_WRITE 
GO
