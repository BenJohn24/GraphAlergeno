USE [master]
GO
/****** Object:  Database [DbAlergenosRes]    Script Date: 30/03/2021 13:42:28 ******/
CREATE DATABASE [DbAlergenosRes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbAlergenosRes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DbAlergenosRes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbAlergenosRes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DbAlergenosRes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DbAlergenosRes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbAlergenosRes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbAlergenosRes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbAlergenosRes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbAlergenosRes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbAlergenosRes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbAlergenosRes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET RECOVERY FULL 
GO
ALTER DATABASE [DbAlergenosRes] SET  MULTI_USER 
GO
ALTER DATABASE [DbAlergenosRes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbAlergenosRes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbAlergenosRes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbAlergenosRes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbAlergenosRes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbAlergenosRes', N'ON'
GO
ALTER DATABASE [DbAlergenosRes] SET QUERY_STORE = OFF
GO
USE [DbAlergenosRes]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30/03/2021 13:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarnePescado]    Script Date: 30/03/2021 13:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarnePescado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreCarnePescado] [nvarchar](max) NULL,
	[AlergenoCarnePescado] [bit] NOT NULL,
 CONSTRAINT [PK_CarnePescado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HarinaCereales]    Script Date: 30/03/2021 13:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarinaCereales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreHarina] [nvarchar](max) NULL,
	[AlergenoHarina] [bit] NOT NULL,
 CONSTRAINT [PK_HarinaCereales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lacteos]    Script Date: 30/03/2021 13:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lacteos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreLacteo] [nvarchar](max) NULL,
	[AlergenoLacteo] [bit] NOT NULL,
 CONSTRAINT [PK_Lacteos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlatoIngredientes]    Script Date: 30/03/2021 13:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlatoIngredientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlatoId] [int] NOT NULL,
	[CarneId] [int] NULL,
	[VerduraId] [int] NULL,
	[HarinaId] [int] NULL,
	[LacteoId] [int] NULL,
	[ModificadoPlato] [bit] NOT NULL,
	[FechaModificado] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PlatoIngredientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platos]    Script Date: 30/03/2021 13:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombrePlato] [nvarchar](max) NULL,
 CONSTRAINT [PK_Platos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerduraFrutas]    Script Date: 30/03/2021 13:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerduraFrutas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreVerdura] [nvarchar](max) NULL,
	[AlergenoVerdura] [bit] NOT NULL,
 CONSTRAINT [PK_VerduraFrutas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_CarneId]    Script Date: 30/03/2021 13:42:28 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_CarneId] ON [dbo].[PlatoIngredientes]
(
	[CarneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_HarinaId]    Script Date: 30/03/2021 13:42:28 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_HarinaId] ON [dbo].[PlatoIngredientes]
(
	[HarinaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_LacteoId]    Script Date: 30/03/2021 13:42:28 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_LacteoId] ON [dbo].[PlatoIngredientes]
(
	[LacteoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_PlatoId]    Script Date: 30/03/2021 13:42:28 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_PlatoId] ON [dbo].[PlatoIngredientes]
(
	[PlatoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_VerduraId]    Script Date: 30/03/2021 13:42:28 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_VerduraId] ON [dbo].[PlatoIngredientes]
(
	[VerduraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PlatoIngredientes]  WITH CHECK ADD  CONSTRAINT [FK_PlatoIngredientes_CarnePescado_CarneId] FOREIGN KEY([CarneId])
REFERENCES [dbo].[CarnePescado] ([Id])
GO
ALTER TABLE [dbo].[PlatoIngredientes] CHECK CONSTRAINT [FK_PlatoIngredientes_CarnePescado_CarneId]
GO
ALTER TABLE [dbo].[PlatoIngredientes]  WITH CHECK ADD  CONSTRAINT [FK_PlatoIngredientes_HarinaCereales_HarinaId] FOREIGN KEY([HarinaId])
REFERENCES [dbo].[HarinaCereales] ([Id])
GO
ALTER TABLE [dbo].[PlatoIngredientes] CHECK CONSTRAINT [FK_PlatoIngredientes_HarinaCereales_HarinaId]
GO
ALTER TABLE [dbo].[PlatoIngredientes]  WITH CHECK ADD  CONSTRAINT [FK_PlatoIngredientes_Lacteos_LacteoId] FOREIGN KEY([LacteoId])
REFERENCES [dbo].[Lacteos] ([Id])
GO
ALTER TABLE [dbo].[PlatoIngredientes] CHECK CONSTRAINT [FK_PlatoIngredientes_Lacteos_LacteoId]
GO
ALTER TABLE [dbo].[PlatoIngredientes]  WITH CHECK ADD  CONSTRAINT [FK_PlatoIngredientes_Platos_PlatoId] FOREIGN KEY([PlatoId])
REFERENCES [dbo].[Platos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlatoIngredientes] CHECK CONSTRAINT [FK_PlatoIngredientes_Platos_PlatoId]
GO
ALTER TABLE [dbo].[PlatoIngredientes]  WITH CHECK ADD  CONSTRAINT [FK_PlatoIngredientes_VerduraFrutas_VerduraId] FOREIGN KEY([VerduraId])
REFERENCES [dbo].[VerduraFrutas] ([Id])
GO
ALTER TABLE [dbo].[PlatoIngredientes] CHECK CONSTRAINT [FK_PlatoIngredientes_VerduraFrutas_VerduraId]
GO
USE [master]
GO
ALTER DATABASE [DbAlergenosRes] SET  READ_WRITE 
GO
