USE [DbRestaurante]
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
SET IDENTITY_INSERT [dbo].[PlatoIngredientes] ON 

INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (1, 1, 6, NULL, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (2, 2, 1, NULL, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (3, 3, 6, NULL, NULL, NULL, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[PlatoIngredientes] ([Id], [PlatoId], [CarneId], [VerduraId], [HarinaId], [LacteoId], [ModificadoPlato], [FechaModificado]) VALUES (4, 4, 5, 9, NULL, NULL, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[PlatoIngredientes] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210327020500_InitialCreate', N'5.0.4')
GO
