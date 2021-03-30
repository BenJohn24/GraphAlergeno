USE [master]
GO
/****** Object:  Database [DbAlergenosRes]    Script Date: 30/03/2021 13:44:02 ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30/03/2021 13:44:02 ******/
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
/****** Object:  Table [dbo].[CarnePescado]    Script Date: 30/03/2021 13:44:02 ******/
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
/****** Object:  Table [dbo].[HarinaCereales]    Script Date: 30/03/2021 13:44:02 ******/
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
/****** Object:  Table [dbo].[Lacteos]    Script Date: 30/03/2021 13:44:02 ******/
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
/****** Object:  Table [dbo].[PlatoIngredientes]    Script Date: 30/03/2021 13:44:02 ******/
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
/****** Object:  Table [dbo].[Platos]    Script Date: 30/03/2021 13:44:02 ******/
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
/****** Object:  Table [dbo].[VerduraFrutas]    Script Date: 30/03/2021 13:44:02 ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210328113511_CrateDataBaseAlergeno', N'5.0.4')
GO
SET IDENTITY_INSERT [dbo].[CarnePescado] ON 

INSERT [dbo].[CarnePescado] ([Id], [NombreCarnePescado], [AlergenoCarnePescado]) VALUES (1, N'Pescado', 1)
INSERT [dbo].[CarnePescado] ([Id], [NombreCarnePescado], [AlergenoCarnePescado]) VALUES (2, N'Crustáceos', 1)
INSERT [dbo].[CarnePescado] ([Id], [NombreCarnePescado], [AlergenoCarnePescado]) VALUES (3, N'Filete', 0)
INSERT [dbo].[CarnePescado] ([Id], [NombreCarnePescado], [AlergenoCarnePescado]) VALUES (4, N'Molusco', 1)
INSERT [dbo].[CarnePescado] ([Id], [NombreCarnePescado], [AlergenoCarnePescado]) VALUES (5, N'Chorizo', 0)
INSERT [dbo].[CarnePescado] ([Id], [NombreCarnePescado], [AlergenoCarnePescado]) VALUES (6, N'Carne de Cerdo', 0)
SET IDENTITY_INSERT [dbo].[CarnePescado] OFF
GO
SET IDENTITY_INSERT [dbo].[HarinaCereales] ON 

INSERT [dbo].[HarinaCereales] ([Id], [NombreHarina], [AlergenoHarina]) VALUES (1, N'Gluten', 1)
INSERT [dbo].[HarinaCereales] ([Id], [NombreHarina], [AlergenoHarina]) VALUES (2, N'Harina de trigo', 1)
INSERT [dbo].[HarinaCereales] ([Id], [NombreHarina], [AlergenoHarina]) VALUES (3, N'Cereales', 0)
INSERT [dbo].[HarinaCereales] ([Id], [NombreHarina], [AlergenoHarina]) VALUES (4, N'Pan Rallado', 1)
INSERT [dbo].[HarinaCereales] ([Id], [NombreHarina], [AlergenoHarina]) VALUES (5, N'Harina de trigo sin gluten', 0)
SET IDENTITY_INSERT [dbo].[HarinaCereales] OFF
GO
SET IDENTITY_INSERT [dbo].[Lacteos] ON 

INSERT [dbo].[Lacteos] ([Id], [NombreLacteo], [AlergenoLacteo]) VALUES (1, N'Leche', 1)
INSERT [dbo].[Lacteos] ([Id], [NombreLacteo], [AlergenoLacteo]) VALUES (2, N'Huevos', 1)
INSERT [dbo].[Lacteos] ([Id], [NombreLacteo], [AlergenoLacteo]) VALUES (3, N'Yogur', 1)
INSERT [dbo].[Lacteos] ([Id], [NombreLacteo], [AlergenoLacteo]) VALUES (4, N'Leche sin lactosa', 0)
INSERT [dbo].[Lacteos] ([Id], [NombreLacteo], [AlergenoLacteo]) VALUES (5, N'Leche de almendra', 0)
SET IDENTITY_INSERT [dbo].[Lacteos] OFF
GO
SET IDENTITY_INSERT [dbo].[PlatoIngredientes] ON 

INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (1, 1, 6, NULL, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (2, 2, 1, NULL, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (3, 3, 6, NULL, NULL, NULL, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (4, 4, 5, 9, NULL, NULL, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[PlatoIngredientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Platos] ON 

INSERT [dbo].[Platos] ([Id], [NombrePlato]) VALUES (1, N'Canelones con Bechamel')
INSERT [dbo].[Platos] ([Id], [NombrePlato]) VALUES (2, N'Merluza a la romana')
INSERT [dbo].[Platos] ([Id], [NombrePlato]) VALUES (3, N'Filete a la plancha')
INSERT [dbo].[Platos] ([Id], [NombrePlato]) VALUES (4, N'Lentejas con Chorizo')
SET IDENTITY_INSERT [dbo].[Platos] OFF
GO
SET IDENTITY_INSERT [dbo].[VerduraFrutas] ON 

INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (1, N'Soja', 1)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (2, N'Almendras', 1)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (3, N'Avellanas', 1)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (4, N'Apio', 1)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (5, N'Sésamo', 1)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (6, N'Mostaza', 1)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (7, N'Altramuces', 1)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (8, N'Lechuga', 0)
INSERT [dbo].[VerduraFrutas] ([Id], [NombreVerdura], [AlergenoVerdura]) VALUES (9, N'Lentejas', 0)
SET IDENTITY_INSERT [dbo].[VerduraFrutas] OFF
GO
/****** Object:  Index [IX_PlatoIngredientes_CarneId]    Script Date: 30/03/2021 13:44:02 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_CarneId] ON [dbo].[PlatoIngredientes]
(
	[CarneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_HarinaId]    Script Date: 30/03/2021 13:44:02 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_HarinaId] ON [dbo].[PlatoIngredientes]
(
	[HarinaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_LacteoId]    Script Date: 30/03/2021 13:44:02 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_LacteoId] ON [dbo].[PlatoIngredientes]
(
	[LacteoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_PlatoId]    Script Date: 30/03/2021 13:44:02 ******/
CREATE NONCLUSTERED INDEX [IX_PlatoIngredientes_PlatoId] ON [dbo].[PlatoIngredientes]
(
	[PlatoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlatoIngredientes_VerduraId]    Script Date: 30/03/2021 13:44:02 ******/
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
