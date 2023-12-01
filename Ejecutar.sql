USE [UAI]
GO
/****** Object:  Table [dbo].[Tabla_Rol]    Script Date: 20/11/2023 14:26:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Rol](
	[ID_ROL] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Rol] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tabla_Rol] PRIMARY KEY CLUSTERED 
(
	[ID_ROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla_Usuarios]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla_Usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[DNI] [int] NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[Rol] [int] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Tabla_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_ER_Localidad]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ER_Localidad](
	[ID_Localidad] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Partido] [int] NOT NULL,
 CONSTRAINT [PK_Table_ER_Localidad] PRIMARY KEY CLUSTERED 
(
	[ID_Localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_ER_Partido]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ER_Partido](
	[ID_Partido] [int] NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[Provincia] [int] NOT NULL,
 CONSTRAINT [PK_Table_ER_Partido] PRIMARY KEY CLUSTERED 
(
	[ID_Partido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_ER_Provincia]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ER_Provincia](
	[ID_Provincia] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_ER_Provincia] PRIMARY KEY CLUSTERED 
(
	[ID_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Patentes]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Patentes](
	[ID_Patente] [int] NOT NULL,
	[Patente] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Año] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Patentes] PRIMARY KEY CLUSTERED 
(
	[ID_Patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Pedido]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Pedido](
	[ID_Pedido] [int] IDENTITY(1,1) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Sucursal] [int] NOT NULL,
	[Usuario] [int] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Table_Pedido] PRIMARY KEY CLUSTERED 
(
	[ID_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Pedido_Producto]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Pedido_Producto](
	[ID_pedprod] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pedido] [int] NOT NULL,
	[Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Recepcionada] [int] NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Table_Pedido_Producto] PRIMARY KEY CLUSTERED 
(
	[ID_pedprod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Producto]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Producto](
	[ID_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Proveedor] [int] NOT NULL,
	[Tipo_Producto] [int] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Table_Producto] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Proveedor]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Proveedor](
	[ID_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[CUIT] [int] NOT NULL,
	[Localidad] [int] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Altura] [varchar](50) NOT NULL,
	[Codigo_Postal] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Table_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ID_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Sucursal]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Sucursal](
	[ID_Sucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Localidad] [int] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Altura] [varchar](50) NOT NULL,
	[Codigo_Postal] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Table_Sucursal] PRIMARY KEY CLUSTERED 
(
	[ID_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Tipo_Producto]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Tipo_Producto](
	[id_Tipo_Ptroducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_Tipo_Producto] PRIMARY KEY CLUSTERED 
(
	[id_Tipo_Ptroducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tabla_Rol] ON 
GO
INSERT [dbo].[Tabla_Rol] ([ID_ROL], [Nombre_Rol]) VALUES (1, N'Administrador')
GO
INSERT [dbo].[Tabla_Rol] ([ID_ROL], [Nombre_Rol]) VALUES (2, N'Operador')
GO
INSERT [dbo].[Tabla_Rol] ([ID_ROL], [Nombre_Rol]) VALUES (3, N'Observador')
GO
INSERT [dbo].[Tabla_Rol] ([ID_ROL], [Nombre_Rol]) VALUES (4, N'Transportista')
GO
SET IDENTITY_INSERT [dbo].[Tabla_Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Tabla_Usuarios] ON 
GO
INSERT [dbo].[Tabla_Usuarios] ([ID], [Nombre], [Apellido], [DNI], [Mail], [Usuario], [Contraseña], [Rol], [Estado]) VALUES (2, N'Rodrigo', N'Pereiro ', 65789412, N'ropereiro@yahoo.com.ar', N'ropereiro', N'12', 1, 1)
GO
INSERT [dbo].[Tabla_Usuarios] ([ID], [Nombre], [Apellido], [DNI], [Mail], [Usuario], [Contraseña], [Rol], [Estado]) VALUES (3, N'mar', N'mal', 23232, N'dsfdfd', N'dsfdfd', N'm', 4, 1)
GO
INSERT [dbo].[Tabla_Usuarios] ([ID], [Nombre], [Apellido], [DNI], [Mail], [Usuario], [Contraseña], [Rol], [Estado]) VALUES (4, N'Marina', N'Maldonado', 30200100, N'Maldonado@maldonado', N'mmaldonado', N'm', 2, 1)
GO
INSERT [dbo].[Tabla_Usuarios] ([ID], [Nombre], [Apellido], [DNI], [Mail], [Usuario], [Contraseña], [Rol], [Estado]) VALUES (5, N'Pablo', N'Maldonado', 12345678, N'rere', N'rere', N'13', 4, 1)
GO
INSERT [dbo].[Tabla_Usuarios] ([ID], [Nombre], [Apellido], [DNI], [Mail], [Usuario], [Contraseña], [Rol], [Estado]) VALUES (6, N'nico', N'lastra', 33333333, N'nlastra@gmail.com', N'nlastra', N'1', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[Tabla_Usuarios] OFF
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1, N'11 de Octubre', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2, N'11 De Septiembre', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3, N'12 de Octubre', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4, N'16 de Julio', 31)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5, N'17 de Agosto', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (6, N'1º de Mayo', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (7, N'1º de Mayo', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (8, N'20 De Junio', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (9, N'25 de Mayo', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (10, N'25 de Mayo', 223)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (11, N'25 de Mayo', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (12, N'25 de Mayo', 400)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (13, N'28 de Julio', 178)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (14, N'28 de Noviembre', 494)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (15, N'3 de Mayo', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (16, N'30 de Agosto', 2)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (17, N'7 de Abril', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (18, N'9 De Abril', 3)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (19, N'9 de Julio', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (20, N'9 de Julio', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (21, N'9 de Julio', 466)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (22, N'9 de Julio  (Est. Pueblo 9 de Julio)', 272)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (23, N'9 de Julio Kilómetro 20', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (24, N'Aarón Castellanos (Est. Castellanos)', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (25, N'Abbott', 4)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (26, N'Abdón Castro Tolay', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (27, N'Abra Grande', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (28, N'Abra Pampa', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (29, N'Abralaite', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (30, N'Abramo', 234)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (31, N'Acassuso', 90)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (32, N'Acebal', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (33, N'Acevedo', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (34, N'Acheral', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (35, N'Achiras', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (36, N'Acoyte', 445)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (37, N'Adelia María', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (38, N'Adolfo E. Carranza', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (39, N'Adolfo Gonzales Chaves  (Est. Chaves)', 5)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (40, N'Adolfo Van Praet', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (41, N'Adrogué', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (42, N'Aerolito', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (43, N'Aeropuerto Internacional Ezeiza', 64)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (44, N'Agrelo', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (45, N'Agua de Oro', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (46, N'Agua Escondida', 388)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (47, N'Aguada Cecilio', 440)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (48, N'Aguada de Guerra', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (49, N'Aguada Guzmán', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (50, N'Aguará Grande', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (51, N'Aguaray', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (52, N'Aguas Blancas', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (53, N'Aguas Calientes', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (54, N'Aguilares', 508)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (55, N'Agustín Mosconi', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (56, N'Agustín Roca', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (57, N'Agustina', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (58, N'Agustoni', 224)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (59, N'Aicuña', 369)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (60, N'Aimogasta', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (61, N'Alba Posse', 400)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (62, N'Albarellos', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (63, N'Alberdi', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (64, N'Alberdi Viejo', 65)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (65, N'Alberti   (Est. Andrés Vaccarezza)', 102)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (66, N'Alcira (Est. Gigena)', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (67, N'Alcorta', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (68, N'Aldao', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (69, N'Aldao (Est. Casablanca)', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (70, N'Aldea Apeleg', 179)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (71, N'Aldea Asunción', 286)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (72, N'Aldea Beleiro', 179)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (73, N'Aldea Brasilera', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (74, N'Aldea Epulef', 189)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (75, N'Aldea Escolar', 192)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (76, N'Aldea María Luisa', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (77, N'Aldea Protestante', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (78, N'Aldea Salto', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (79, N'Aldea San Antonio', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (80, N'Aldea San Francisco', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (81, N'Aldea San Juan', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (82, N'Aldea San Rafael', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (83, N'Aldea Santa María', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (84, N'Aldea Santa María', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (85, N'Aldea Santa Rosa', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (86, N'Aldea Spatzenkutter', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (87, N'Aldea Valle María', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (88, N'Alderetes', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (89, N'Aldo Bonzi', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (90, N'Alejandra', 504)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (91, N'Alejandro Petión', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (92, N'Alejandro Roca (Est. Alejandro)', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (93, N'Alejo Ledesma', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (94, N'Alfredo Demarchi  (Est. Facundo Quiroga)', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (95, N'Algarrobo del Águila', 225)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (96, N'Alhuampa', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (97, N'Alicia', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (98, N'Alijilán', 147)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (99, N'Allen', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (100, N'Almafuerte', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (101, N'Almafuerte', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (102, N'Almirante Brown', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (103, N'Alpa Corral', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (104, N'Alpachiri', 226)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (105, N'Alpachiri', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (106, N'Alta Gracia', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (107, N'Alta Italia', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (108, N'Altamirano', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (109, N'Altamirano Sur', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (110, N'Alto Alegre', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (111, N'Alto Carrizal', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (112, N'Alto de la Sierra', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (113, N'Alto de los Quebrachos', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (114, N'Alto de Sierra', 466)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (115, N'Alto Los Cardales', 22)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (116, N'Alto Pelado', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (117, N'Alto Pencoso', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (118, N'Alto Río Senguer', 179)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (119, N'Alto Salvador', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (120, N'ALTO VERDE', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (121, N'ALTO VERDE', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (122, N'Altos de Chipión', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (123, N'Aluminé', 429)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (124, N'Álvarez', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (125, N'Alvarez de Toledo', 17)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (126, N'Alvarez Jonte', 79)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (127, N'Alvear', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (128, N'Alvear', 252)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (129, N'Amadores', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (130, N'Amaicha del Valle', 342)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (131, N'Amaná', 360)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (132, N'Amanao', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (133, N'Ambil', 365)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (134, N'Amboy', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (135, N'Ambrosetti', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (136, N'Ambul', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (137, N'Amenábar', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (138, N'América', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (139, N'Aminga', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (140, N'Ampascachi', 450)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (141, N'Ana Zumarán', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (142, N'Añatuya', 318)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (143, N'Ancaján', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (144, N'Ancasti', 145)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (145, N'Anchorena', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (146, N'Andacollo', 422)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (147, N'Andalgalá', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (148, N'Andalhualá', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (149, N'Andant', 73)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (150, N'Andrade', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (151, N'Añelo', 425)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (152, N'Angastaco', 462)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (153, N'Angel Gallardo', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (154, N'Angélica', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (155, N'Angeloni', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (156, N'Angualasto', 467)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (157, N'Anguil', 227)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (158, N'Angulos', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (159, N'Anillaco', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (160, N'Anillaco', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (161, N'Animaná', 462)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (162, N'Anisacate', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (163, N'Anjullón', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (164, N'Anquincila', 145)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (165, N'Antajé', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (166, N'Antelo', 278)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (167, N'Antilla', 459)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (168, N'Antinaco', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (169, N'Antinaco', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (170, N'Antofagasta de la Sierra', 139)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (171, N'Antofalla', 139)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (172, N'Antonio Carboni', 8)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (173, N'Anzoategui', 228)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (174, N'Aparicio', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (175, N'Apolinario Saravia', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (176, N'Apóstoles', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (177, N'Apoyaco', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (178, N'Aranguren', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (179, N'Arata', 353)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (180, N'Arauco', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (181, N'Arbilla', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (182, N'Arboledas', 73)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (183, N'Arcadia', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (184, N'Ardiles', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (185, N'Area De Promocion El Triángulo', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (186, N'Area Reserva Cinturón Ecológico', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (187, N'Arenas Verdes', 111)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (188, N'Arenaza', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (189, N'Arequito', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (190, N'Argentina', 332)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (191, N'Argerich', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (192, N'Arias', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (193, N'Ariel', 31)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (194, N'Aristóbulo del Valle', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (195, N'Arizona', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (196, N'Arminda', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (197, N'Armstrong', 309)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (198, N'Arocena', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (199, N'Árraga', 326)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (200, N'Arrayanal', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (201, N'Arrecifes', 9)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (202, N'Arribeños', 67)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (203, N'Arroyito', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (204, N'Arroyito', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (205, N'Arroyo Aguiar', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (206, N'Arroyo Algodón', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (207, N'Arroyo Barú', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (208, N'Arroyo Cabral', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (209, N'Arroyo Ceibal', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (210, N'Arroyo Colorado', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (211, N'Arroyo Corto', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (212, N'Arroyo de la Cruz', 98)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (213, N'Arroyo del Medio', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (214, N'Arroyo Dulce', 71)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (215, N'Arroyo Leyes', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (216, N'Arroyo Los Berros', 440)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (217, N'Arroyo Los Patos', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (218, N'Arroyo Martínez', 293)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (219, N'Arroyo San Antonio', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (220, N'Arroyo Seco', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (221, N'Arroyo Venado', 25)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (222, N'Arroyo Ventana', 440)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (223, N'Arroyo Verde', 191)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (224, N'Arrufo', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (225, N'Arteaga', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (226, N'Ascensión', 67)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (227, N'Ascochinga', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (228, N'Assunta', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (229, N'Astica', 468)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (230, N'Astra', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (231, N'Atahona', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (232, N'Atahona', 511)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (233, N'Atalaya', 11)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (234, N'Ataliva', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (235, N'Ataliva Roca', 233)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (236, N'Atocha', 443)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (237, N'Aurelia', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (238, N'Ausonia', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (239, N'Avellaneda', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (240, N'Avellaneda', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (241, N'Avellaneda (Est. Ewald)', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (242, N'Averías', 318)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (243, N'Avia Terai', 154)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (244, N'Ayacucho', 70)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (245, N'Azara', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (246, N'Azcuénaga', 120)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (247, N'Azopardo', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (248, N'Azul', 31)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (249, N'Bagual', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (250, N'Bahía Blanca', 21)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (251, N'Bahía Bustamante', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (252, N'Bahía Creek', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (253, N'Bahía San Blas', 114)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (254, N'Baigorrita', 81)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (255, N'Bajada del Agrio', 418)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (256, N'Bajo Caracoles', 495)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (257, N'Bajo Carrizal', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (258, N'Bajo Hondo', 123)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (259, N'Bajo San Cayetano', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (260, N'Balcarce', 110)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (261, N'Balde', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (262, N'Balde de la Punta', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (263, N'Balde del Rosario', 468)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (264, N'Ballesteros', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (265, N'Ballesteros Sur', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (266, N'Balnearia', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (267, N'Balneario La Verde', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (268, N'Balneario Laguna de Gómez', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (269, N'Balneario Marisol', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (270, N'Balneario Monje', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (271, N'Balneario Orense', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (272, N'Balneario Pehuen Co', 123)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (273, N'Balneario San Cayetano', 12)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (274, N'Balneario Sauce Grande', 94)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (275, N'Bañado de los Pantanos', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (276, N'Bañado de Ovanta', 147)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (277, N'Bañado de Soto', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (278, N'Bananal', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (279, N'Banco Payaguá', 300)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (280, N'Banda de Lucero', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (281, N'Banda del Río Salí', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (282, N'Bandera', 319)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (283, N'Bandera Bajada', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (284, N'Banderaló', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (285, N'Banfield', 121)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (286, N'Baradero', 13)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (287, N'Bárcena', 216)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (288, N'Barda del Medio', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (289, N'Bardas Blancas', 388)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (290, N'Barker', 115)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (291, N'Barra Concepción', 409)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (292, N'Barranca Larga', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (293, N'Barrancas', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (294, N'Barrancas', 415)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (295, N'Barrancas', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (296, N'Barranqueras', 153)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (297, N'Barreal - Villa Pituil', 469)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (298, N'Barrio 12 de Octubre', 381)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (299, N'Barrio Aeropuerto', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (300, N'Barrio Alto del Olvido', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (301, N'Barrio Arroyo del Medio', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (302, N'Barrio Bancario', 150)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (303, N'Barrio Belgrano Norte', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (304, N'Barrio Blanco', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (305, N'Barrio Caima', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (306, N'Barrio Calle Ciega Nº10', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (307, N'Barrio Calle Ciega Nº6', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (308, N'Barrio Campos El Toledano', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (309, N'Barrio Canale', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (310, N'Barrio Casa Rosada', 346)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (311, N'Barrio Chacra Monte', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (312, N'Barrio Chivilcoy', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (313, N'Barrio Cicarelli', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (314, N'Barrio Colinas Verdes', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (315, N'Barrio Colonia Conesa', 430)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (316, N'Barrio Cooperativa Los Campamentos', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (317, N'Barrio Costa Este', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (318, N'Barrio Costa Linda', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (319, N'Barrio Costa Oeste', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (320, N'Barrio de los Pescadores', 166)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (321, N'Barrio El Boquerón', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (322, N'Barrio El Casal', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (323, N'Barrio El Cepillo', 379)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (324, N'Barrio El Coyunco', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (325, N'Barrio El Cruce', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (326, N'Barrio El Labrador', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (327, N'Barrio El Maruchito', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (328, N'Barrio El Milagro', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (329, N'Barrio El Nevado', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (330, N'Barrio El Pacaá - Barrio Comipini', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (331, N'Barrio El Petróleo', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (332, N'Barrio El Pilar', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (333, N'Barrio El Taladro', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (334, N'Barrio Emanuel', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (335, N'Barrio Empleados de Comercio', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (336, N'Barrio Esperanza', 270)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (337, N'Barrio Frontera', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (338, N'Barrio Gilbert', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (339, N'Barrio Guerrico', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (340, N'Barrio Intendencia', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (341, N'Barrio Isla 10', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (342, N'Barrio Jesús de Nazaret', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (343, N'Barrio Jocolí II', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (344, N'Barrio La Barda', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (345, N'Barrio La Costa', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (347, N'Barrio La Defensa', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (348, N'Barrio La Gloria', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (349, N'Barrio La Lor', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (350, N'Barrio La Palmera', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (351, N'Barrio La Pega', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (352, N'Barrio La Ribera - Barrio APYCAR', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (353, N'Barrio La Unión', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (354, N'Barrio Lagunas de Bartoluzzi', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (355, N'Barrio Las Angustias', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (356, N'Barrio Las Casuarinas', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (357, N'Barrio Las Golondrinas', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (358, N'Barrio Lomas de Tafí', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (359, N'Barrio Los Bosquecitos', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (360, N'Barrio Los Charabones', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (361, N'Barrio Los Jarilleros', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (362, N'Barrio Los Olivos', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (363, N'Barrio Los Pioneros', 22)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (364, N'Barrio Mar del Plata', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (365, N'Barrio María Auxiliadora', 381)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (366, N'Barrio María Elvira', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (367, N'Barrio Mitre', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (368, N'Barrio Molina Cabrera', 381)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (369, N'Barrio Mosconi', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (370, N'Barrio Mutual San Martín', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (371, N'Barrio Norte (municipio de Cinco Saltos)', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (372, N'Barrio Norte (municipio de Cipolletti)', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (373, N'Barrio Parada 14', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (374, N'Barrio Parque Almirante Irizar  (Ap. Kilómetro 61)', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (375, N'Barrio Parque General San Martin', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (376, N'Barrio Parque Las Acacias', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (377, N'Barrio Perdriel IV', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (378, N'Barrio Pino Azul', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (379, N'Barrio Porvenir', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (380, N'Barrio Presidente Perón', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (381, N'Barrio Puente 83', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (382, N'Barrio Río Salado', 14)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (383, N'Barrio Rivadavia', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (384, N'Barrio Ruta 24 Kilómetro 10', 15)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (385, N'Barrio Ruta 40', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (386, N'Barrio Saavedra', 80)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (387, N'Barrio Sadop', 478)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (388, N'Barrio San Cayetano', 394)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (389, N'Barrio San Felipe', 344)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (390, N'Barrio San Jorge', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (391, N'Barrio San José III', 514)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (392, N'Barrio Santa Isabel', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (393, N'Barrio Santa Paula', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (394, N'Barrio Santa Rita', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (395, N'Barrio Santa Rosa', 134)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (396, N'Barrio U.T.A. II', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (397, N'Barrio Unión', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (398, N'Barrio Unión', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (399, N'Barrio Villa del Parque', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (400, N'Barrios', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (401, N'Barrios Acapulco y Veracruz', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (402, N'Bartolomé de las Casas', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (403, N'Basail', 153)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (404, N'Basavilbaso', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (405, N'Batán', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (406, N'Batavia', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (407, N'Bauer y Sigel', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (408, N'Bayauca', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (409, N'Beazley', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (410, N'Beccar', 90)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (411, N'Belén', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (412, N'Bell Ville', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (413, N'Bella Italia', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (414, N'Bella Vista', 95)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (415, N'Bella Vista', 253)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (416, N'Bella Vista', 467)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (417, N'Bella Vista', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (418, N'Bellocq', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (419, N'Beltrán', 321)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (420, N'Benavídez', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (421, N'Bengolea', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (422, N'Benito Juárez  (Est. Juárez)', 115)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (423, N'Benjamín Gould', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (424, N'Beravebú', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (425, N'Berazategui', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (426, N'Berazategui Oeste', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (427, N'Berdier', 71)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (428, N'Berisso', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (429, N'Bermejito', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (430, N'BERMEJO', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (431, N'Bermúdez', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (432, N'Berna', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (433, N'Bernal', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (434, N'Bernal Oeste', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (435, N'Bernardo de Irigoyen', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (436, N'Bernardo de Irigoyen (Est. Irigoyen)', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (437, N'Bernardo Larroude', 229)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (438, N'Bernasconi', 234)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (439, N'Berón de Astrada', 254)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (440, N'Berrotarán', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (441, N'Berutti', 2)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (442, N'Betbeder', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (443, N'Bialet Massé', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (444, N'Bigand', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (445, N'Billinghurst', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (446, N'Blancagrande', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (447, N'Blanco Encalada', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (448, N'Blancuntre', 183)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (449, N'Blaquier', 104)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (450, N'Blaquier', 17)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (451, N'Bocayuva', 18)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (452, N'Bombal', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (453, N'Bonpland', 276)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (454, N'Bonpland', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (455, N'Bordenave', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (456, N'Bosques', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (457, N'Boulogne Sur Mer', 90)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (458, N'Bouquet', 309)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (459, N'Bouwer', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (460, N'Bovril', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (461, N'Bowen', 383)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (462, N'Bragado', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (463, N'Brea Pozo', 317)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (464, N'Brinkmann', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (465, N'Buen Pasto', 180)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (466, N'Buena Esperanza', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (467, N'Buena Vista', 301)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (468, N'Buenos Aires Chico', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (469, N'Bulnes', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (470, N'Burzaco', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (471, N'Bustinza', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (472, N'Buta Ranquil', 415)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (473, N'Caá - Yarí', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (474, N'Cabal', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (475, N'Cabalango', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (476, N'Cabildo', 21)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (477, N'Cabra Corral', 450)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (478, N'Cacharí', 31)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (479, N'Cacheuta', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (480, N'Cachi', 457)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (481, N'Cacique Ariacaiquín', 504)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (482, N'Cadret', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (483, N'Cafayate', 444)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (484, N'Cafferata', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (485, N'Caimancito', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (486, N'Calabacilla', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (487, N'Calchaquí', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (488, N'Calchín', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (489, N'Calchín Oeste', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (490, N'Caleta Olivia', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (491, N'Caleufú', 354)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (492, N'Calilegua', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (493, N'Calingasta', 469)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (494, N'Camarones', 181)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (495, N'Camilo Aldao', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (496, N'Caminiaga', 243)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (497, N'Campamento Vespucio', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (498, N'Campana', 22)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (499, N'Campanas', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (500, N'Campichuelo', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (501, N'Campo Andino', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (502, N'Campo de Herrera', 346)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (503, N'Campo De Mayo', 95)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (504, N'Campo Durán', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (505, N'Campo Gallo', 327)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (506, N'Campo Grande', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (507, N'Campo La Cruz', 445)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (508, N'Campo Largo', 154)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (509, N'Campo Los Andes', 394)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (510, N'Campo Quijano', 460)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (511, N'Campo Ramón', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (512, N'Campo Santo', 446)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (513, N'Campo Viera', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (514, N'Cañada de Gómez', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (515, N'Cañada de Luque', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (516, N'Cañada de Machado', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (517, N'Cañada de Río Pinto', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (518, N'Cañada del Sauce', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (519, N'Cañada del Ucle', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (520, N'Cañada Escobar', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (521, N'Cañada Honda', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (522, N'Cañada Ombú', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (523, N'Cañada Rica', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (524, N'Cañada Rosquín', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (525, N'Cañada Seca', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (526, N'Cañadón Seco', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (527, N'Canals', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (528, N'Candelaria', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (529, N'Candelaria', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (530, N'Candelaria Sur', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (531, N'Candioti', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (532, N'Cangrejillos', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (533, N'Canning', 3)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (534, N'Canning', 64)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (535, N'Canteras El Sauce', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (536, N'Canteras Quilpo', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (537, N'Cañuelas', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (538, N'Capayán', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (539, N'Capdeville', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (540, N'Capiazuti', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (541, N'Capilla de los Remedios', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (542, N'Capilla de Sitón', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (543, N'Capilla del Carmen', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (544, N'Capilla del Monte', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (545, N'Capilla del Señor  (Est. Capilla)', 98)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (546, N'Capilla Vieja', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (547, N'Capioví', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (548, N'Capitán Bermúdez', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (549, N'Capitán Cáceres', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (550, N'Capitán Castro', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (551, N'Capitán General Bernardo O''Higgins', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (552, N'Capitán Juan Pagé', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (553, N'Capitán Montoya', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (554, N'Capitán Sarmiento', 72)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (555, N'Capitán Solari', 158)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (556, N'Capivara', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (557, N'Caraguatay', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (558, N'Carahunco', 305)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (559, N'Carapachay', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (560, N'Carboncito', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (561, N'Carcarañá', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (562, N'Cardenal Cagliero', 114)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (563, N'Carhué', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (564, N'Carlos Beguerie', 23)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (565, N'Carlos Casares', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (566, N'Carlos Keen', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (567, N'Carlos María Naón', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (568, N'Carlos Pellegrini', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (569, N'Carlos Salas', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (570, N'Carlos Spegazzini', 64)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (571, N'Carlos Tejedor', 32)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (572, N'Carlos Tomás Sourigues', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (573, N'Carmen', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (574, N'Carmen de Areco', 24)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (575, N'Carmen de Patagones', 114)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (576, N'Carmen del Sauce', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (577, N'Carmensa', 383)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (578, N'Carnerillo', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (579, N'Carolina', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (580, N'Carpinteria', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (581, N'Carpintería', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (582, N'Carrenleufú', 189)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (583, N'Carreras', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (584, N'Carrilobo', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (585, N'Carrizales (Est. Clarke)', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (586, N'Carro Quemado', 352)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (587, N'Casa Bamba', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (588, N'Casa de Piedra', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (589, N'Casa Grande', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (590, N'Casabindo', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (591, N'Casalegno', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (592, N'Casalins', 100)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (593, N'Casares', 332)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (594, N'Casas', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (595, N'Casbas', 25)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (596, N'Cascadas', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (597, N'Caseros', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (598, N'Caseros', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (599, N'Caseros Centro', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (600, N'Casilda', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (601, N'Casira', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (602, N'Caspalá', 220)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (603, N'Caspi Corral', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (604, N'Caspichango', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (605, N'Castelar', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (606, N'Castelar', 127)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (607, N'Castellanos', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (608, N'Castelli', 26)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (609, N'Castilla', 28)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (610, N'Castro Barros', 362)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (611, N'Catriel', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (612, N'Catriló', 235)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (613, N'Catua', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (614, N'Caucete', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (615, N'Cavanagh', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (616, N'Caviahué', 416)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (617, N'Cavour', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (618, N'Cayastá', 207)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (619, N'Cayastacito', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (620, N'Cazador', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (621, N'Cazadores Correntinos', 255)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (622, N'Cazón', 17)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (623, N'Ceballos', 229)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (624, N'Ceibalito', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (625, N'Ceibas', 293)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (626, N'Centenario', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (627, N'Centeno', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (628, N'Centro 25 de Junio', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (629, N'Centro Agrícola El Pato', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (630, N'Centro Forestal', 305)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (631, N'Centro Guerrero', 26)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (632, N'Cepeda', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (633, N'Ceres', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (634, N'Cerrillos', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (635, N'Cerrito', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (636, N'Cerro Azul', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (637, N'Cerro Colorado', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (638, N'Cerro Colorado', 243)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (639, N'Cerro Colorado', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (640, N'Cerro Cóndor', 188)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (641, N'Cerro Corá', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (642, N'Cerro de Oro', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (643, N'Cerro Negro', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (644, N'Cerro Policía', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (645, N'Cervantes', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (646, N'Chabás', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (647, N'Chacabuco', 28)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (648, N'Chacharramendi', 233)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (649, N'Chacras de San Clemente', 52)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (650, N'Chaján', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (651, N'Chajarí', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (652, N'Chalacea', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (653, N'Chalicán', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (654, N'Chamical', 363)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (655, N'Chañar', 362)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (656, N'Chañar Ladeado', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (657, N'Chañar Pozo de Abajo', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (658, N'Chañar Punco', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (659, N'Chañar Viejo', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (660, N'Chañarmuyo', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (661, N'Chancani', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (662, N'Chapadmalal', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (663, N'Chapanay', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (664, N'Chapuy', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (665, N'Chaquiago', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (666, N'Charadai', 155)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (667, N'Charata', 156)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (668, N'Charbonier', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (669, N'Charigüé', 278)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (670, N'Charras', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (671, N'Chascomús', 82)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (672, N'Chasicó', 117)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (673, N'Chauchillas', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (674, N'Chaupi Pozo', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (675, N'Chavarría', 272)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (676, N'Chazón', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (677, N'Chelforó', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (678, N'Chepes', 364)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (679, N'Chichinales', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (680, N'Chiclana', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (681, N'Chicoana', 451)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (682, N'Chilca Juliana', 312)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (683, N'Chilecito', 379)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (684, N'Chilecito', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (685, N'Chilibroste', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (686, N'Chillar', 31)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (687, N'Chimbas', 472)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (688, N'Chimpay', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (689, N'Chivilcoy', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (690, N'Chivilcoy', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (691, N'Choele Choel', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (692, N'Cholila', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (693, N'Choromoro', 347)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (694, N'Chorotis', 174)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (695, N'Chorriaca', 420)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (696, N'Chos Malal', 427)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (697, N'Chosmes', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (698, N'Chovet', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (699, N'Choya', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (700, N'Choya', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (701, N'Christophersen', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (702, N'Chuchucaruana', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (703, N'Chucul', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (704, N'Chucuma', 468)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (705, N'Chumbicha', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (706, N'Chuña', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (707, N'Chuña Huasi', 243)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (708, N'Chuquis', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (709, N'Churqui Cañada', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (710, N'Churruca', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (711, N'Ciénaga del Coro', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (712, N'Cienaguita', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (713, N'Ciénega', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (714, N'Cieneguillas', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (715, N'Ciervo Petiso', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (716, N'Cinco Saltos', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (717, N'Cintra', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (718, N'Cipolletti', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (719, N'Ciudad Del Libertador General San Martin', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (720, N'Ciudad Evita', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (721, N'Ciudad Jardin El Libertador', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (722, N'Ciudad Jardín Lomas del Palomar', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (723, N'Ciudadela', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (724, N'Claraz', 66)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (725, N'Claromecó', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (726, N'Classon', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (727, N'Claypole', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (728, N'Clemente Onelli', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (729, N'Clodomira', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (730, N'Clodomiro Ledesma', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (731, N'Clorinda', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (732, N'Club de Campo Larena - Los Quinchos', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (733, N'Cobos', 446)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (734, N'Cobres', 448)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (735, N'Cochinoca', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (736, N'Coctaca', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (737, N'Colalao del Valle', 342)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (738, N'Colan Conhue', 189)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (739, N'Colan Conhue', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (740, N'Colana', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (741, N'Colazo', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (742, N'Collagasta', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (743, N'Colmena', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (744, N'Colombres', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (745, N'Colón', 515)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (746, N'Colón', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (747, N'Colonia 10 de Julio', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (748, N'Colonia Aborigen', 168)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (749, N'Colonia Alemana', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (750, N'Colonia Alicia', 400)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (751, N'Colonia Almada', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (752, N'Colonia Alpina', 313)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (753, N'Colonia Ana', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (754, N'Colonia Anguinán', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (755, N'Colonia Anita', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (756, N'Colonia Aurora', 400)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (757, N'Colonia Avellaneda', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (758, N'Colonia Avigdor', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (759, N'Colonia Ayuí', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (760, N'Colonia Baranda', 153)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (761, N'Colonia Barge', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (762, N'Colonia Barón', 359)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (763, N'Colonia Belgrano', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (764, N'Colonia Benítez', 166)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (765, N'Colonia Bicha', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (766, N'Colonia Bismarck', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (767, N'Colonia Bossi', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (768, N'Colonia Bremen', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (769, N'Colonia Campo Villafañe', 298)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (770, N'Colonia Carlos Pellegrini', 256)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (771, N'Colonia Carolina', 260)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (772, N'Colonia Caroya', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (773, N'Colonia Catinzaco', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (774, N'Colonia Cello', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (775, N'Colonia del Valle', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (776, N'Colonia Dolores', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (777, N'Colonia Dora', 325)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (778, N'Colonia Durán', 504)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (779, N'Colonia El Simbolar', 321)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (780, N'Colonia Elía', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (781, N'Colonia Elisa', 158)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (782, N'Colonia Ensanche Sauce', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (783, N'Colonia Ensayo', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (784, N'Colonia Fiorito', 466)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (785, N'Colonia Fiscal', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (786, N'Colonia General Roca', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (787, N'Colonia Hinojo', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (788, N'Colonia Hugues', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (789, N'Colonia Italiana', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (790, N'Colonia Juliá y Echarren', 437)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (791, N'Colonia La Argentina', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (792, N'Colonia Las Cuatro Esquinas', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (793, N'Colonia Las Pichanas', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (794, N'Colonia Las Rosas', 394)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (795, N'Colonia Libertad', 266)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (796, N'Colonia Liebig''s', 257)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (797, N'Colonia Malligasta', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (798, N'Colonia Margarita', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (799, N'Colonia Marina', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (800, N'Colonia Mauricio', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (801, N'Colonia Mayo - Barrio La Milagrosa', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (802, N'Colonia Médici', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (803, N'Colonia Nievas', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (804, N'Colonia Nueva Coneta', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (805, N'Colonia Ortiz de Ocampo', 365)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (806, N'Colonia Pando', 272)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (807, N'Colonia Pastoril', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (808, N'Colonia Peña', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (809, N'Colonia Polana', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (810, N'Colonia Popular', 163)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (811, N'Colonia Prosperidad', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (812, N'Colonia Raquel', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (813, N'Colonia Rosa', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (814, N'Colonia San Adolfo', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (815, N'Colonia San Bartolomé', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (816, N'Colonia San José', 359)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (817, N'Colonia San José', 217)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (818, N'Colonia San Juan', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (819, N'Colonia San Martín', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (820, N'Colonia San Miguel', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (821, N'Colonia San Miguel Arcángel', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (822, N'Colonia San Pedro', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (823, N'Colonia San Ricardo  (Est. Iriarte)', 122)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (824, N'Colonia Santa María', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (825, N'Colonia Santa María', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (826, N'Colonia Santa María', 233)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (827, N'Colonia Santa Rosa', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (828, N'Colonia Sarmiento', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (829, N'Colonia Segovia', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (830, N'Colonia Seré', 32)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (831, N'Colonia Suiza', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (832, N'Colonia Tinco', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (833, N'Colonia Tirolesa', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (834, N'Colonia Valtelina', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (835, N'Colonia Veinticinco', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (836, N'Colonia Vicente Agüero', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (837, N'Colonia Vichigasta', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (838, N'Colonia Victoria', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (839, N'Colonia Videla', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (840, N'Colonia Vignaud', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (841, N'Colonia Yeruá', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (842, N'Colonias Unidas', 158)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (843, N'Colpes', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (844, N'Colpes', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (845, N'Comallo', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (846, N'Comandante Fontana', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (847, N'Comandante Luis Piedrabuena', 499)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (848, N'Comandante Nicanor Otamendi', 87)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (849, N'Comicó', 433)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (850, N'Comodoro Py', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (851, N'Comodoro Rivadavia', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (852, N'Cona Niyeu', 433)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (853, N'Concarán', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (854, N'Concepción', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (855, N'Concepción', 273)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (856, N'Concepción', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (857, N'Concepción de la Sierra', 409)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (858, N'Concepción del Bermejo', 172)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (859, N'Concepción del Uruguay', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (860, N'Concordia', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (861, N'Cóndor Huasi', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (862, N'Conesa', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (863, N'Coneta', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (864, N'Conhelo', 231)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (865, N'Conlara', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (866, N'Conscripto Bernardi', 283)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (867, N'Constanza', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (868, N'Contralmirante Cordero', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (869, N'Copacabana', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (870, N'Copacabana', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (871, N'Copahue', 416)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (872, N'Copetonas', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (873, N'Copo Quile', 459)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (874, N'Coranzuli', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (875, N'Corcovado', 192)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (876, N'Córdoba', 198)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (877, N'Cordobita', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (878, N'Cordón del Plata', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (879, N'Coronda', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (880, N'Coronel Arnold', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (881, N'Coronel Baigorria', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (882, N'Coronel Belisle', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (883, N'Coronel Boerr', 33)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (884, N'Coronel Bogado', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (885, N'Coronel Brandsen', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (886, N'Coronel Charlone', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (887, N'Coronel Cornejo', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (888, N'Coronel Dorrego', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (889, N'Coronel Du Graty', 160)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (890, N'Coronel Fraga', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (891, N'Coronel Hilario Lagos (Est. Aguas Buenas)', 229)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (892, N'Coronel Juan Solá', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (893, N'Coronel Manuel L. Rico', 327)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (894, N'Coronel Martínez de Hoz  (Ap. Kilómetro 322)', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (895, N'Coronel Moldes', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (896, N'Coronel Moldes', 450)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (897, N'Coronel Mollinedo', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (898, N'Coronel Olleros', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (899, N'Coronel Pringles  (Est. Pringles)', 35)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (900, N'Coronel Rodolfo S. Domínguez', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (901, N'Coronel Seguí', 102)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (902, N'Coronel Suárez', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (903, N'Coronel Vidal', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (904, N'Corpus', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (905, N'Corral de Bustos', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (906, N'Corral Quemado', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (907, N'Corral Quemado', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (908, N'Corralito', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (909, N'Correa', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (910, N'Corrientes', 270)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (911, N'Cortaderas', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (912, N'Cortines', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (913, N'Corzuela', 159)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (914, N'Cosquín', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (915, N'Costa Azul', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (916, N'Costa Bonita', 66)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (917, N'Costa de Araujo', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (918, N'Costa de Reyes', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (919, N'Costa Flores', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (920, N'Costasacate', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (921, N'Cote Lai', 155)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (922, N'Country Chacras de la Villa - Country San Isidro', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (923, N'Country Club Bosque Real - Barrio Morabo', 15)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (924, N'Country Club El Casco', 80)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (925, N'Country Club El Jagüel', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (926, N'Country Club El Rodeo', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (927, N'Crespo', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (928, N'Crispi', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (929, N'Crotto', 118)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (930, N'Cruce Caballero', 410)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (931, N'Crucesita', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (932, N'Cruz Alta', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (933, N'Cruz Caña', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (934, N'Cruz de Caña', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (935, N'Cruz de los Milagros', 261)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (936, N'Cruz de Piedra', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (937, N'Cruz del Eje', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (938, N'Cuadro Benegas', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (939, N'Cuartel V', 75)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (940, N'Cuatro Bocas', 319)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (941, N'Cuatro Esquinas', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (942, N'Cuchillo Co', 230)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (943, N'Cucullú', 120)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (944, N'Cuesta Blanca', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (945, N'Cululú', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (946, N'Cura Malal', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (947, N'Curarú', 32)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (948, N'Curupaity', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (949, N'Curuzú Cuatiá', 255)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (950, N'Cushamen Centro', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (951, N'Cusi Cusi', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (952, N'Cutral Có', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (953, N'Daireaux', 73)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (954, N'Dalmacio Vélez', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (955, N'Damián Maisonave (Est. Simson)', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (956, N'Darregueira', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (957, N'Darwin', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (958, N'De Bary', 18)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (959, N'De la Canal', 46)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (960, N'De la Garma', 5)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (961, N'Deán Funes', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (962, N'Del Campillo', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (963, N'Del Carril', 17)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (964, N'Del Valle', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (965, N'Del Viso', 37)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (966, N'Delfín Gallo', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (967, N'Delfín Huergo', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (968, N'Desaguadero', 386)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (969, N'Desaguadero', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (970, N'Desiderio Tello', 364)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (971, N'Despeñaderos', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (972, N'Desvío Aguirre', 46)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (973, N'Desvío Arijón', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (974, N'Devoto', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (975, N'Diadema Argentina', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (977, N'Diamante', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (978, N'Díaz', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (979, N'Diego de Alvear', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (980, N'Diego de Rojas', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (981, N'Diego Gaynor', 98)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (982, N'Dina Huapi', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (983, N'Dique Chico', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (984, N'Dique Florentino Ameghino', 178)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (985, N'Dique Luján', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (986, N'Divisadero', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (987, N'Doblas', 358)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (988, N'Dock Sud', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (989, N'Doctor Ricardo Rojas', 179)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (990, N'Dolavon', 178)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (991, N'Dolores', 38)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (992, N'Domingo Savio', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (993, N'Domselaar', 133)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (994, N'Don Bosco', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (995, N'Don Cristóbal', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (996, N'Don Emilio', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (997, N'Don Orione', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (998, N'Don Torcuato Este', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (999, N'Don Torcuato Oeste', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1000, N'Donadeu', 327)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1001, N'D''Orbigny', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1002, N'Dorila', 224)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1003, N'Dos Acequias (Est. Los Angacos)', 478)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1004, N'Dos Arroyos', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1005, N'Dos Arroyos', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1006, N'Dos de Mayo Núcleo I', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1007, N'Dos de Mayo Núcleo II', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1008, N'Dos de Mayo Núcleo III', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1009, N'Dos Hermanas', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1010, N'Dragones', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1011, N'Dudignac', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1012, N'Dufaur', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1013, N'Duggan', 40)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1014, N'Durazno', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1015, N'Eduardo Castex', 231)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1016, N'Egusquiza', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1017, N'El 49', 314)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1018, N'El Acheral', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1019, N'El Aguilar', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1020, N'El Alamito', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1021, N'El Alcalde (Est. Tala Norte)', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1022, N'El Alcázar', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1023, N'El Alto', 152)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1024, N'El Arañado', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1025, N'El Araza', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1026, N'El Arbolito', 515)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1027, N'El Aybal', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1028, N'El Bañado', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1029, N'El Bañado', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1030, N'El Barrial', 462)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1031, N'El Bobadal', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1032, N'El Bolsón', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1033, N'El Bolsón', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1034, N'El Bordo', 446)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1035, N'El Bracho', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1036, N'El Brete', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1037, N'El Caburé', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1038, N'El Cadillal', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1039, N'El Caín', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1040, N'El Cajón', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1041, N'El Calafate', 500)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1042, N'El Caramelo', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1043, N'El Carmen', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1044, N'El Carril', 451)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1045, N'El Carrizal', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1046, N'El Ceibal', 215)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1047, N'El Chacho', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1048, N'El Chaltén', 500)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1049, N'El Chañar', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1050, N'El Charco', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1051, N'El Charco', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1052, N'El Chocón', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1053, N'El Cholar', 416)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1054, N'El Cimarrón', 283)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1055, N'El Colorado', 298)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1056, N'El Colorado', 338)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1057, N'El Cóndor', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1058, N'El Cóndor', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1059, N'El Corcovado - El Torreón', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1060, N'El Crispín', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1061, N'El Crucero', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1062, N'El Cuadrado', 338)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1063, N'El Cuy', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1064, N'El Deán', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1065, N'El Desmonte', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1066, N'El Diquecito', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1067, N'El Divisadero', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1068, N'El Divisorio', 35)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1069, N'El Dorado', 65)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1070, N'El Durazno', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1071, N'El Encón', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1072, N'El Escorial', 183)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1073, N'El Espinillo', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1074, N'El Espinillo', 301)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1075, N'El Fortín', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1076, N'El Foyel', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1077, N'El Fuerte', 29)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1078, N'El Fuertecito', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1079, N'El Galpón', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1080, N'El Hoyo', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1081, N'El Huayco', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1082, N'El Huecú', 416)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1083, N'El Jagüel', 3)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1084, N'El Jardín', 455)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1085, N'El Juncal', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1086, N'El Libertador', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1087, N'El Lindero', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1088, N'El Maitén', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1089, N'El Manantial', 344)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1090, N'El Manzano', 394)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1091, N'El Manzano', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1092, N'El Marquesado', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1093, N'El Médano', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1094, N'El Mirador', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1095, N'El Mirasol', 187)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1096, N'El Mojón', 316)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1097, N'El Mojón', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1098, N'El Mollar', 342)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1099, N'El Moreno', 216)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1100, N'El Naranjo', 459)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1101, N'El Naranjo', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1102, N'El Nihuil', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1103, N'El Pajonal  (Est. Pomán)', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1104, N'El Palenque', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1105, N'El Palomar', 127)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1106, N'El Pantanillo', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1107, N'El Pantanillo', 150)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1108, N'El Paraíso', 124)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1109, N'El Paramillo', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1110, N'El Pedregal', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1111, N'El Peñón', 139)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1112, N'El Pensamiento', 35)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1113, N'El Peral', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1114, N'El Perdido  (Est. José A. Guisasola)', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1115, N'El Pingo', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1116, N'El Piquete', 29)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1117, N'El Portezuelo', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1118, N'El Potrero', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1119, N'El Potrero', 459)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1120, N'El Potrillo', 294)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1121, N'El Pueblito', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1122, N'El Puesto', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1123, N'El Puesto', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1124, N'El Puesto', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1125, N'El Quebrachal', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1126, N'El Quemado', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1127, N'El Quimilo', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1128, N'El Rabón', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1129, N'El Rastreador', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1130, N'El Recreo', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1131, N'El Redomón', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1132, N'El Rincón', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1133, N'El Rincón', 482)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1134, N'El Rincón', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1135, N'El Rincón', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1136, N'El Rodeo', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1137, N'El Rodeo', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1138, N'El Rosario', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1139, N'El Salado', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1140, N'El Salto', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1141, N'El Salto', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1142, N'El Sauzal', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1143, N'El Sauzalito', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1144, N'El Soberbio', 401)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1145, N'El Solar', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1146, N'El Sombrero', 258)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1147, N'El Sosneado', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1148, N'El Tabacal', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1149, N'El Tala', 455)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1150, N'El Talar', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1151, N'El Talar', 29)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1152, N'El Tío', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1153, N'El Tipal - La Almudena', 443)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1154, N'El Toro', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1155, N'El Trapiche', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1156, N'El Trébol', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1157, N'El Trigo', 33)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1158, N'El Triunfo', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1159, N'El Tropezón', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1160, N'El Tunal', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1161, N'El Turbio (Est. Gobernador Mayer)', 494)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1162, N'El Tuscal', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1163, N'El Vergel', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1164, N'El Volcán', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1165, N'El Zanjón', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1166, N'Eldorado', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1167, N'Elena', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1168, N'Elisa', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1169, N'Elortondo', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1170, N'Elvira', 8)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1171, N'Embajador Martini', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1172, N'Embalse', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1173, N'Embarcación', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1174, N'Emilia', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1175, N'Emilio Ayarza', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1176, N'Emilio V. Bunge', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1177, N'Empalme San Carlos', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1178, N'Empalme Villa Constitución', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1179, N'Empedrado', 258)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1180, N'Enrique Carbó', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1181, N'Enrique Urién', 160)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1182, N'Ensenada', 41)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1183, N'Epuyén', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1184, N'Erézcano', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1185, N'Ernestina', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1186, N'Escalada', 80)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1187, N'Esmeralda', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1188, N'Espartillar', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1189, N'Espartillar', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1190, N'Esperanza', 413)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1191, N'Esperanza', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1192, N'Espigas', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1193, N'Esquel', 192)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1194, N'Esquina', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1195, N'Esquina', 259)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1196, N'Esquina del Alambre', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1197, N'Esquiú', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1198, N'Estación Apóstoles', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1199, N'Estación Aráoz', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1200, N'Estación Arenales', 67)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1201, N'Estación Arroyo Clé', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1202, N'Estación Atamisqui', 331)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1203, N'Estación Camps', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1204, N'Estación Chapadmalal', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1205, N'Estación Clucellas', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1206, N'Estación Colonia Tirolesa', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1207, N'Estación General Obligado', 163)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1208, N'Estación La Punta', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1209, N'Estación Lazo', 286)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1210, N'Estación Lecueder', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1211, N'Estación Libertad', 266)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1212, N'Estación Luxardo', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1213, N'Estación Mazán', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1214, N'Estación Raíces', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1215, N'Estación Robles', 317)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1216, N'Estación Saguier', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1217, N'Estación Taboada', 317)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1218, N'Estación Tacañitas', 318)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1219, N'Estación Torrent', 252)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1220, N'Estación Yeruá', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1221, N'Estancia de Guadalupe', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1222, N'Estancia San Pedro', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1223, N'Estancia Vieja', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1224, N'Estanislao del Campo', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1225, N'Estanislao Severo Zeballos', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1226, N'Esteban Agustín Gascón', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1227, N'Esteban Rams', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1228, N'Estela', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1229, N'Esther', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1230, N'Etruria', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1231, N'Eufrasio Loza', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1232, N'Eugenio Bustos', 379)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1233, N'Eusebia y Carolina', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1234, N'Eustolia', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1235, N'Ezpeleta', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1236, N'Ezpeleta Oeste', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1237, N'Facundo', 179)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1238, N'Falda del Cañete', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1239, N'Falda del Carmen', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1240, N'Falucho', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1241, N'Famaillá', 346)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1242, N'Famatanca', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1243, N'Famatina', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1244, N'Farallón Negro', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1245, N'Faro', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1246, N'Faustino M. Parera', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1247, N'Febré', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1248, N'Federación', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1249, N'Federal', 283)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1250, N'Felicia', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1251, N'Felipe Solá', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1252, N'Felipe Yofré', 265)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1253, N'Fernández', 321)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1254, N'Ferré', 67)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1255, N'Ferri', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1256, N'Fiambalá', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1257, N'Fighiera', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1258, N'Firmat', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1259, N'Firmat', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1260, N'Fitz Roy', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1261, N'Florencia', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1262, N'Florencio Varela', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1263, N'Florentino Ameghino', 104)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1264, N'Florentino Ameghino', 408)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1265, N'Florida', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1266, N'Florida Oeste', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1267, N'Fontana', 153)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1268, N'Fontezuela', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1269, N'Formosa', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1270, N'Fortín Acha', 65)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1271, N'Fortín Cabo 1º Lugones', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1272, N'Fortín El Patria', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1273, N'Fortín Inca', 319)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1274, N'Fortín Las Chuñas', 154)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1275, N'Fortín Lavalle', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1276, N'Fortín Olavarría', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1277, N'Fortín Olmos', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1278, N'Fortín Sargento 1º Leyes', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1279, N'Fortín Tiburcio', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1280, N'Fortuna', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1281, N'Fracrán', 401)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1282, N'Fraga', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1283, N'Fraile Pintado', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1284, N'Francisco Alvarez', 75)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1285, N'Francisco Madero', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1286, N'Franck', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1287, N'Franklin', 120)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1288, N'Fray Luis Beltrán', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1289, N'Fray Luis Beltrán', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1290, N'Freyre', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1291, N'Frías', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1292, N'Frontera', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1293, N'Frontera de Río Pico', 185)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1294, N'Fuentes', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1295, N'Fuerte Esperanza', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1296, N'Fuerte Quemado', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1297, N'Funes', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1298, N'Gaboto', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1299, N'Gahan', 71)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1300, N'Gaiman', 178)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1301, N'Gálvez', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1302, N'Gan Gan', 184)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1303, N'Gancedo', 167)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1304, N'Gaona', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1305, N'Garabato', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1306, N'Garayalde', 181)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1307, N'Gardey', 46)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1308, N'Garibaldi', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1309, N'Garmendia', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1310, N'Garré', 25)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1311, N'Garruchos', 274)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1312, N'Garuhapé', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1313, N'Garupá', 402)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1314, N'Garza', 320)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1315, N'Gastre', 183)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1316, N'Gato Colorado', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1317, N'General Acha', 233)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1318, N'General Almada', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1319, N'General Alvear', 47)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1320, N'General Alvear', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1321, N'General Alvear', 383)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1322, N'General Arenales', 67)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1323, N'General Baldissera', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1324, N'General Ballivián', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1325, N'General Belgrano', 48)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1326, N'General Cabrera', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1327, N'General Campos', 285)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1328, N'General Capdevila', 167)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1329, N'General Conesa', 125)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1330, N'General Conesa', 430)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1331, N'General Daniel Cerri  (Est. General Cerri)', 21)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1332, N'General Deheza', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1333, N'General Enrique Godoy', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1334, N'General Fernández Oro', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1335, N'General Fotheringham', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1336, N'General Galarza', 286)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1337, N'General Gelly', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1338, N'General Güemes', 446)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1339, N'General Guido', 76)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1340, N'General Hornos', 69)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1341, N'General José de San Martín', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1342, N'General Juan Madariaga', 50)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1343, N'General La Madrid', 51)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1344, N'General Lagos', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1345, N'General Las Heras  (Est. Las Heras)', 69)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1346, N'General Lavalle', 52)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1347, N'General Levalle', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1348, N'General Lucio Victorio Mansilla', 300)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1349, N'General Mansilla  (Est. Bartolomé Bavio)', 11)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1350, N'General Manuel J. Campos', 226)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1351, N'General Mosconi', 294)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1352, N'General Mosconi', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1353, N'General O''Brien', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1354, N'General Pacheco', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1355, N'General Paz', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1356, N'General Pico', 224)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1357, N'General Pinedo', 167)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1358, N'General Pinto', 122)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1359, N'General Pirán', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1360, N'General Pizarro', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1361, N'General Racedo', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1362, N'General Ramírez', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1363, N'General Rivas', 53)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1364, N'General Roca', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1365, N'General Roca', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1366, N'General Rojo', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1367, N'General San Martín (Est. Villa Alba)', 234)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1368, N'General Urquiza', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1369, N'General Vedia', 171)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1370, N'General Villegas  (Est. Villegas)', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1371, N'Gerli', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1372, N'Gerli', 77)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1373, N'Germania  (Est. Mayor José Orellano)', 122)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1374, N'Gessler', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1375, N'Gilbert', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1376, N'Girodias', 2)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1377, N'Glew', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1378, N'Gobernador Castro', 108)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1379, N'Gobernador Costa', 185)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1380, N'Gobernador Crespo', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1381, N'Gobernador Duval', 355)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1382, N'Gobernador Echagüe', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1383, N'Gobernador Gregores', 495)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1384, N'Gobernador Igr. Valentín Virasoro', 274)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1385, N'Gobernador Juan E. Martínez', 261)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1386, N'Gobernador Julio A. Costa', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1387, N'Gobernador López', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1388, N'Gobernador Mansilla', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1389, N'Gobernador Roca', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1390, N'Gobernador Solá', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1391, N'Gobernador Udaondo', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1392, N'Gobernador Ugarte', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1393, N'Gödeken', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1394, N'Godoy', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1395, N'Godoy Cruz', 387)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1396, N'Golondrina', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1397, N'Gómez', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1398, N'Gonzalez Catán', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1399, N'González Moreno', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1400, N'Gorchs', 48)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1401, N'Gorostiaga', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1402, N'Goudge', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1403, N'Gowland', 56)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1404, N'Goya', 260)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1405, N'Goyena', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1406, N'Gramilla', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1407, N'Gramilla', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1408, N'Gran China', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1409, N'Gran Guardia', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1410, N'Granadero Baigorria', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1411, N'Grand Bourg', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1412, N'Graneros', 348)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1413, N'Gregoria Pérez de Denis (Est. El Nochero)', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1414, N'Gregorio De Laferrere', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1415, N'Grutly', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1416, N'Guachipas', 453)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1417, N'Guadalupe Norte', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1418, N'Gualeguay', 286)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1419, N'Gualeguaychú', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1420, N'Gualjaina', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1421, N'Guaminí', 25)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1422, N'Guanacache', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1423, N'Guanaco Muerto', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1424, N'Guanchín', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1425, N'Guandacol', 369)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1426, N'Guaraní', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1427, N'Guardamonte', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1428, N'Guardia Escolta', 319)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1429, N'Guardia Mitre', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1430, N'Guasapampa', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1431, N'Guatimozín', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1432, N'Guatraché', 226)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1433, N'Guaviraví', 256)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1434, N'Guayamba', 152)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1435, N'Guaymallén', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1436, N'Guerrero', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1437, N'Guerrico', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1438, N'Guillermo E. Hudson', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1439, N'Gütemberg', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1440, N'Haedo', 127)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1441, N'Hale', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1442, N'Hambis', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1443, N'Hasenkamp', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1444, N'Hasse', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1445, N'Haumonía', 155)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1446, N'Helvecia', 207)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1447, N'Helvecia', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1448, N'Henderson', 58)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1449, N'Hermoso Campo', 161)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1450, N'Hernán Mejía Miraval', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1451, N'Hernandarias', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1452, N'Hernández', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1453, N'Hernando', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1454, N'Herradura', 300)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1455, N'Herrera', 325)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1456, N'Herrera', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1457, N'Herrera Vegas', 58)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1458, N'Hersilia', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1459, N'Hickman', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1460, N'Hilario Ascasubi', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1461, N'Hinojo', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1462, N'Hipatia', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1463, N'Hipólito Bouchard', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1464, N'Hipólito Yrigoyen', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1465, N'Hipólito Yrigoyen', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1466, N'Hipólito Yrigoyen', 495)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1467, N'Hipólito Yrigoyen (Est. Iturbe)', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1468, N'Hocker', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1469, N'Horquilla', 155)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1470, N'Hortensia', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1471, N'Huacalera', 217)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1472, N'Huaco', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1473, N'Hualfín', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1474, N'Huáncar', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1475, N'Huanchillas', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1476, N'Huanguelén', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1477, N'Huanqueros', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1478, N'Huaycama', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1479, N'Huaycama', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1480, N'Hucal', 234)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1481, N'Huerta Grande', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1482, N'Hughes', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1483, N'Huillapima', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1484, N'Huinca Renancó', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1485, N'Huinganco', 422)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1486, N'Humahuaca', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1487, N'Humberto Primo', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1488, N'Humboldt', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1489, N'Hurlingham', 60)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1490, N'Huyamampa', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1491, N'Ibarlucea', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1492, N'Ibarreta', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1493, N'Ibicuy', 293)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1494, N'Icaño', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1495, N'Icaño', 325)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1496, N'Idiazabal', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1497, N'Iglesia', 467)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1498, N'Ignacio Correas', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1499, N'Iltico', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1500, N'Impira', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1501, N'Indio Rico', 35)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1502, N'Inés Indart', 71)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1503, N'Infanzón', 152)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1504, N'Ingeniero Adolfo Sourdeaux', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1505, N'Ingeniero Barbet', 158)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1506, N'Ingeniero Chanourdie', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1507, N'Ingeniero Forres (Est. Chaguar Punco)', 321)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1508, N'Ingeniero Foster', 354)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1509, N'Ingeniero Giagnoni', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1510, N'Ingeniero Guillermo N. Juárez', 296)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1511, N'Ingeniero Gustavo André', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1512, N'Ingeniero Jacobacci', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1513, N'Ingeniero Juan Allan', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1514, N'Ingeniero Luiggi', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1515, N'Ingeniero Luis A. Huergo', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1516, N'Ingeniero Miguel Sajaroff', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1517, N'Ingeniero Otto Krause', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1518, N'Ingeniero Pablo Nogués', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1519, N'Ingeniero Thompson', 116)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1520, N'Ingenio Fronterita', 346)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1521, N'Ingenio Primer Correntino', 267)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1522, N'Ingenio San Pablo', 344)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1523, N'Inriville', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1524, N'Integración', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1525, N'Intendente Alvear', 229)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1526, N'Intiyaco', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1527, N'Irala', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1528, N'Irazusta', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1529, N'Irene', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1530, N'Irigoyen', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1531, N'Irineo Portela', 13)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1532, N'Iruya', 458)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1533, N'Isca Yacu', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1534, N'Isca Yacu Semaul', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1535, N'Isidro Casanova', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1536, N'Isla de Cañas', 458)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1537, N'Isla del Cerrito', 171)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1538, N'Isla Verde', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1539, N'Itá Ibaté', 262)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1540, N'Itacaruaré', 408)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1541, N'Italó', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1542, N'Itatí', 268)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1543, N'Itín', 161)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1544, N'Ituzaingó', 257)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1545, N'Ituzaingó Centro', 62)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1546, N'Ituzaingó Sur', 62)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1547, N'Jacinto Arauz', 234)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1548, N'Jacinto L. Aráuz', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1549, N'Jacipunco', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1550, N'Jagüé', 376)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1551, N'Jaime Prats', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1552, N'James Craik', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1553, N'Jaramillo', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1554, N'Jardín América', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1555, N'Jardín Arenales', 198)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1556, N'Jarilla', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1557, N'Jeppener', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1558, N'Jesús María', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1559, N'Joaquín V. González', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1560, N'Jocolí', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1561, N'Jocolí', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1562, N'Jocolí Viejo', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1563, N'José B. Casas', 114)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1564, N'José C Paz', 37)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1565, N'José de San Martín', 185)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1566, N'Jose Ingenieros', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1567, N'José Juan Almeyra', 63)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1568, N'José Maria Ezeiza', 64)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1569, N'José María Jáuregui (Est. Jáuregui)', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1570, N'Jose Mármol', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1571, N'José Rafael Gómez', 274)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1572, N'Josefina', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1573, N'Joyango', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1574, N'Juan A. de la Peña', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1575, N'Juan A. Pradere', 114)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1576, N'Juan Anchorena  (Est. Urquiza)', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1577, N'Juan B. Molina', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1578, N'Juan Bautista Alberdi', 513)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1579, N'Juan Bautista Alberdi  (Est. Alberdi)', 65)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1580, N'Juan Cousté  (Est. Algarrobo)', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1581, N'Juan E. Barra', 5)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1582, N'Juan F. Ibarra', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1583, N'Juan G. Bazán', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1584, N'Juan Jorba', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1585, N'Juan José Castelli', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1586, N'Juan José Paso', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1587, N'Juan Llerena', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1588, N'Juan María Gutierrez', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1589, N'Juan N. Fernández', 66)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1590, N'Juan Pujol', 266)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1591, N'Juana Koslay', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1592, N'Jubileo', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1593, N'Juella', 217)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1594, N'Julia Dufour', 494)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1595, N'Juncal', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1596, N'Junín', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1597, N'Junín', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1598, N'Junín de los Andes', 417)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1599, N'Justiniano Posse', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1600, N'Justo Daract', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1601, N'Kilómetro 101', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1602, N'Kilómetro 115', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1603, N'Kilómetro 30', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1604, N'Kilómetro 658', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1605, N'Koluel Kaike', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1606, N'La Adela', 228)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1607, N'La Aguada', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1608, N'La Almona', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1609, N'La Angelita', 67)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1610, N'La Arboleda', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1611, N'La Armonía', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1612, N'La Aurora', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1613, N'La Aurora  (Est. La Niña)', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1614, N'La Bajada', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1615, N'La Bajada', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1616, N'La Banda', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1617, N'La Banda', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1618, N'La Batea', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1619, N'La Beba', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1620, N'La Boca del Río', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1621, N'La Brava', 504)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1622, N'La Buitrera', 418)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1623, N'La Cabral', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1624, N'La Caldera', 454)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1625, N'La Calera', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1626, N'La Calera', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1627, N'La Cañada', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1628, N'La Candelaria', 145)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1629, N'La Candelaria', 455)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1630, N'La Capilla', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1632, N'La Carbonada', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1633, N'La Carlota', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1634, N'La Carolina', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1635, N'La Carreta', 2)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1636, N'La Cautiva', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1637, N'La Central', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1638, N'La Cesira', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1639, N'La Chispa', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1640, N'La Choza', 69)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1641, N'La Ciénaga y Barrio San Rafael', 443)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1642, N'La Ciénega', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1643, N'La Clarita', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1644, N'La Clotilde', 162)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1645, N'La Cocha', 350)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1646, N'La Colina', 51)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1647, N'La Colonia', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1648, N'La Constancia', 70)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1649, N'La Consulta', 379)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1650, N'La Corita', 409)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1651, N'La Cortadera', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1652, N'La Criolla', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1653, N'La Criolla (Est. Cañadita)', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1654, N'La Cruz', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1655, N'La Cruz', 256)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1656, N'La Cuadra', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1657, N'La Cumbre', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1658, N'La Cumbrecita', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1659, N'La Cumbrecita', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1660, N'La Dársena', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1661, N'La Delfina', 81)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1662, N'La Dorada', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1663, N'La Dormida', 381)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1664, N'La Eduvigis', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1665, N'La Emilia', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1666, N'La Escondida', 164)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1667, N'La Esperanza', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1668, N'La Esperanza', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1669, N'La Falda', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1670, N'La Firmeza', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1671, N'La Florida', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1672, N'La Florida', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1673, N'La Florida', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1674, N'La Francia', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1675, N'La Gallareta', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1676, N'La Gilda', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1677, N'La Gloria', 235)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1678, N'La Granja', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1679, N'La Guardia', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1680, N'La Higuera', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1681, N'La Higuera', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1682, N'La Hoyada', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1683, N'La Humada', 225)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1684, N'La Intermedia', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1685, N'La Invencible', 71)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1686, N'La Invernada', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1687, N'La Isleta', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1688, N'La Laguna', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1689, N'La Larga', 73)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1690, N'La Leonesa', 171)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1691, N'La Libertad', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1692, N'La Limpia', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1693, N'La Llave Nueva', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1694, N'La Lobería', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1695, N'La Loma', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1696, N'La Lucila', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1697, N'La Luisa', 72)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1698, N'La Majada', 145)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1699, N'La Majada', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1700, N'La Manga', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1701, N'La Manuela', 73)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1702, N'La Maroma', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1703, N'La Maruja', 354)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1704, N'La Mendieta', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1705, N'La Merced', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1706, N'La Merced', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1707, N'La Misión', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1708, N'La Nena', 318)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1709, N'La Nueva Donosa', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1710, N'La Paisanita', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1711, N'La Pala', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1712, N'La Palestina', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1713, N'La Pampa', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1714, N'La Paquita', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1715, N'La Para', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1716, N'La Paz', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1717, N'La Paz', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1718, N'La Paz', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1719, N'La Paz', 386)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1720, N'La Pelada', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1721, N'La Penca y Caraguatá', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1722, N'La Perla', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1723, N'La Picada', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1724, N'La Plata', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1725, N'La Playa', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1726, N'La Playosa', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1727, N'La Población', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1728, N'La Poma', 448)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1729, N'La Posta', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1730, N'La Primavera', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1731, N'La Puerta', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1732, N'La Puerta', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1733, N'La Puerta', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1734, N'La Puerta', 464)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1735, N'La Punilla', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1736, N'La Puntilla', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1737, N'La Quiaca', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1738, N'La Quinta', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1739, N'La Ramada', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1740, N'La Ramada', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1741, N'La Rancherita', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1742, N'La Reducción', 344)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1743, N'La Reforma', 351)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1744, N'La Reja', 75)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1745, N'La Rica', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1746, N'La Rinconada', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1747, N'La Rioja', 367)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1748, N'La Rubia', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1749, N'La Sabana', 155)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1750, N'La Sarita', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1751, N'La Serranita', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1752, N'La Silleta', 460)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1753, N'La Sofía', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1754, N'La Tablada', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1755, N'La Tigra', 162)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1756, N'La Toma', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1757, N'La Tordilla', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1758, N'La Travesía', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1759, N'La Trinidad', 67)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1760, N'La Trinidad', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1761, N'La Unión', 64)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1762, N'La Unión', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1763, N'La Vanguardia', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1764, N'La Verde', 164)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1765, N'La Vertiente', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1766, N'La Viña', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1767, N'La Viña', 450)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1768, N'La Violeta', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1769, N'Labarden', 76)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1770, N'Laborde', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1771, N'Labordeboy', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1772, N'Laboulaye', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1773, N'Lafinur', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1774, N'Lago Blanco', 179)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1775, N'Lago Epuyén', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1776, N'Lago Puelo', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1777, N'Lago Rosario', 192)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1778, N'Laguna Alsina  (Est. Bonifacio)', 25)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1779, N'Laguna Blanca', 163)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1780, N'Laguna Blanca', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1781, N'Laguna Blanca', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1782, N'Laguna Brava', 270)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1783, N'Laguna de Lobos', 8)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1784, N'Laguna del Pescado', 278)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1785, N'Laguna Escondida', 339)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1786, N'Laguna Larga', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1787, N'Laguna Limpia', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1788, N'Laguna Naick-Neck', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1789, N'Laguna Paiva', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1790, N'Laguna Yema', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1791, N'Lagunillas de Farallón', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1792, N'Lagunita Salada', 183)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1793, N'Laharrague', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1794, N'Lamadrid', 348)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1795, N'Lamarque', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1796, N'Landeta', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1797, N'Lanteri', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1798, N'Lanús Este', 77)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1799, N'Lanús Oeste', 77)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1800, N'Lapachito', 164)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1801, N'Laplacette', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1802, N'Laprida', 105)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1803, N'Laprida', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1804, N'Larguía', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1805, N'Larrechea', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1806, N'Larroque', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1807, N'Lartigau', 35)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1808, N'Las Acequias', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1809, N'Las Aguadas', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1810, N'Las Albahacas', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1811, N'Las Armas', 78)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1812, N'Las Arrias', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1813, N'Las Avispas', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1814, N'Las Bahamas', 124)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1815, N'Las Bajadas', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1816, N'Las Bandurrias', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1817, N'Las Bayas', 436)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1818, N'Las Breñas', 165)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1819, N'Las Caleras', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1820, N'Las Calles', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1821, N'Las Cañadas', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1822, N'Las Cañas', 147)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1823, N'Las Carabelas', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1824, N'Las Catitas', 381)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1825, N'Las Cejas', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1826, N'Las Chacras', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1827, N'Las Chacritas', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1828, N'Las Chacritas', 466)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1829, N'Las Coloradas', 419)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1830, N'Las Compuertas', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1831, N'Las Costas', 443)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1832, N'Las Cuevas', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1833, N'Las Delicias', 316)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1834, N'Las Esquinas', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1835, N'Las Flores', 33)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1836, N'Las Flores', 467)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1837, N'Las Garcitas', 158)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1838, N'Las Garzas', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1839, N'Las Gramillas', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1840, N'Las Grutas', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1841, N'Las Guachas', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1842, N'Las Heras', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1843, N'Las Heras', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1844, N'Las Higueras', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1845, N'Las Isletillas', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1846, N'Las Jarillas', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1847, N'Las Juntas', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1848, N'Las Juntas', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1849, N'Las Junturas', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1850, N'Las Lagunas', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1851, N'Las Lagunas', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1852, N'Las Lajas', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1853, N'Las Lajas', 418)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1854, N'Las Lajitas', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1855, N'Las Leñas', 388)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1856, N'Las Lomitas', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1857, N'Las Malvinas', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1858, N'Las Marianas', 63)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1859, N'Las Martinetas', 51)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1860, N'Las Mojarras', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1861, N'Las Mojarras', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1862, N'Las Moscas', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1863, N'Las Oscuras', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1864, N'Las Ovejas', 422)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1865, N'Las Palmas', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1866, N'Las Palmas', 171)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1867, N'Las Palmeras', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1868, N'Las Palmitas', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1869, N'Las Parejas', 309)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1870, N'Las Peñas', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1871, N'Las Peñas', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1872, N'Las Perdices', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1873, N'Las Perlas', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1874, N'Las Petacas', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1875, N'Las Playas', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1876, N'Las Plumas', 187)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1877, N'Las Rabonas', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1878, N'Las Rosas', 309)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1879, N'Las Saladas', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1880, N'Las Tahonas', 79)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1881, N'Las Talas - Los Médanos', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1882, N'Las Tapias', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1883, N'Las Tapias', 474)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1884, N'Las Tejas', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1885, N'Las Tinajas', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1886, N'Las Toninas', 85)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1887, N'Las Toscas', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1888, N'Las Toscas', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1889, N'Las Tunas', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1890, N'Las Tunas', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1891, N'Las Varas', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1892, N'Las Varillas', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1893, N'Las Vegas', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1894, N'Las Vertientes', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1895, N'Las Violetas', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1896, N'Lavaisse', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1897, N'Lavalle', 261)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1898, N'Lavalle', 328)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1899, N'Lavalle', 147)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1900, N'Lazzarino', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1901, N'Leandro N. Alem', 65)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1902, N'Leandro N. Alem', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1903, N'Leandro N. Alem', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1904, N'Leguizamón', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1905, N'Lehmann', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1906, N'Leleque', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1907, N'León', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1908, N'Leones', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1909, N'Lezica y Torrezuri', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1910, N'Líbano', 51)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1911, N'Líbaros', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1912, N'Libertad', 103)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1913, N'Libertad', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1914, N'Libertad', 413)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1915, N'Libertad', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1916, N'Libertador General San Martín (Est. Ledesma)', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1917, N'Licenciado Matienzo', 111)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1918, N'Lilo Viejo', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1919, N'Lima', 80)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1920, N'Limay Mahuida', 351)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1921, N'Lin Calel', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1922, N'Lincoln', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1923, N'Liviara', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1924, N'Llambi Campbell', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1925, N'Llavallol', 121)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1926, N'Llulluchayoc', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1927, N'Lobería', 111)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1928, N'Lobos', 8)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1929, N'Logroño', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1930, N'Loma Alta', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1931, N'Loma Blanca', 362)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1932, N'Loma Hermosa', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1933, N'Loma Verde', 14)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1934, N'Lomas de Copello', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1935, N'Lomas de Vallejos', 262)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1936, N'Lomas De Zamora', 121)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1937, N'Lomas Del Mirador', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1938, N'Lomas del Río Luján (Est. Río Luján)', 22)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1939, N'Loncopué', 420)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1940, N'Londres', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1941, N'Longchamps', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1942, N'Lonquimay', 235)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1943, N'López', 115)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1944, N'López (Est. San Martín de Tours)', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1945, N'López Lecube', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1946, N'Loreto', 263)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1947, N'Loreto', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1948, N'Loro Huasi', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1949, N'Los Altares', 188)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1950, N'Los Altos', 147)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1951, N'Los Amores', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1952, N'Los Angeles', 28)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1953, N'Los Angeles', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1954, N'Los Antiguos', 497)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1955, N'Los Árboles', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1956, N'Los Baldecitos', 468)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1957, N'Los Balverdis', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1958, N'Los Barriales', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1959, N'Los Berros', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1960, N'Los Blancos', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1961, N'Los Cajones', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1962, N'Los Callejones', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1963, N'Los Campamentos', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1964, N'Los Cardales', 98)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1965, N'Los Cardos', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1966, N'Los Cardozos', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1967, N'Los Castillos', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1968, N'Los Catutos', 421)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1969, N'Los Cedros - Las Quintas', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1970, N'Los Cerrillos', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1971, N'Los Chañaritos', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1973, N'Los Chañaritos', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1974, N'Los Charrúas', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1975, N'Los Chiriguanos', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1976, N'Los Cipreses', 192)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1977, N'Los Cisnes', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1978, N'Los Cocos', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1979, N'Los Compartos', 383)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1980, N'Los Cóndores', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1981, N'Los Conquistadores', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1982, N'Los Corrales', 152)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1983, N'Los Corralitos', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1984, N'Los Frentones', 172)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1985, N'Los Helechos', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1986, N'Los Hornillos', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1987, N'Los Hoyos', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1988, N'Los Indios', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1989, N'Los Juríes', 318)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1990, N'Los Lapachos (Est. Maquinista Verón)', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1991, N'Los Laureles', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1992, N'Los Menucos', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1993, N'Los Miches', 422)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1994, N'Los Miranda', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1995, N'Los Mistoles', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1996, N'Los Molinos', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1997, N'Los Molinos', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1998, N'Los Molinos', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (1999, N'Los Molles', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2000, N'Los Molles', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2001, N'Los Molles', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2002, N'Los Muchachos - La Alborada', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2003, N'Los Nacimientos', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2004, N'Los Nacimientos', 139)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2005, N'Los Naranjos', 11)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2006, N'Los Nogales', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2007, N'Los Núñez', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2008, N'Los Palacios', 369)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2009, N'Los Penitentes', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2010, N'Los Pinos', 110)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2011, N'Los Pirpintos', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2012, N'Los Polvorines', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2013, N'Los Pozos', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2014, N'Los Puestos', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2015, N'Los Quiroga', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2016, N'Los Quirquinchos', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2017, N'Los Ralos', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2018, N'Los Reartes', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2019, N'Los Reyunos', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2020, N'Los Romeros', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2021, N'Los Sarmientos', 508)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2022, N'Los Sauces', 394)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2023, N'Los Soria', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2024, N'Los Surgentes', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2025, N'Los Talares', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2026, N'Los Talas', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2027, N'Los Telares', 312)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2028, N'Los Tigres', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2029, N'Los Toldos', 81)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2030, N'Los Toldos', 445)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2031, N'Los Troncos Del Talar', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2032, N'Los Varela', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2033, N'Los Zapallos', 207)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2034, N'Los Zorros', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2035, N'Loteo Costa de Río', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2036, N'Loteo Navea', 215)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2037, N'Loventué', 352)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2038, N'Lozada', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2039, N'Lozano', 69)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2040, N'Lozano (Ap. Chañi)', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2041, N'Luan Toro', 352)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2042, N'Luca', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2043, N'Lucas González', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2044, N'Lucas Monteverde', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2045, N'Lucio V. López', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2046, N'Lucio V. Mansilla', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2047, N'Lugones', 325)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2048, N'Luis Beltrán', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2049, N'Luis Burela', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2050, N'Luis Guillón', 3)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2051, N'Luis Palacios (Est. La Salada)', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2052, N'Luján', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2053, N'Luján', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2054, N'Luján de Cuyo', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2055, N'Lules', 344)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2056, N'Lumbreras', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2057, N'Luque', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2058, N'Lutti', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2059, N'Luyaba', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2060, N'Macachín', 358)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2061, N'Macapillo', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2062, N'Machagai', 168)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2063, N'Maciá', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2064, N'Maciel', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2065, N'Maco', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2066, N'Macomitas', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2067, N'Magdala', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2068, N'Magdalena', 11)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2069, N'Maggiolo', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2070, N'Maimará', 217)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2071, N'Mainqué', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2072, N'Maipú', 78)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2073, N'Maipú', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2074, N'Makallé', 164)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2075, N'Malabrigo', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2076, N'Malagueño', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2077, N'Malanzán', 370)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2078, N'Malargüe', 388)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2079, N'Malbrán', 332)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2080, N'Malena', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2081, N'Malligasta', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2082, N'Mallín', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2083, N'Malvinas Argentinas', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2084, N'Malvinas Argentinas', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2085, N'Malvinas Argentinas', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2086, N'Mamuel Choique', 436)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2087, N'Manantiales', 147)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2088, N'Manantiales', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2089, N'Manfredi', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2090, N'Mansupa', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2091, N'Manuel B. Gonnet  (Est. French)', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2092, N'Manuel García Fernández', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2093, N'Manuel J. Cobo  (Est. Lezama)', 82)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2094, N'Manuel Ocampo', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2095, N'Manzano Amargo', 422)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2096, N'Maquinchao', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2097, N'Maquinista Gallini', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2098, N'Maquito', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2099, N'Mar Azul', 83)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2100, N'Mar Chiquita', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2101, N'Mar de Ajó - San Bernardo', 85)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2102, N'Mar de Cobo', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2103, N'Mar del Plata', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2104, N'Mar del Sur', 87)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2105, N'Marayes', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2106, N'Marcelino Escalada', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2107, N'Marcelino Ugarte  (Est. Dennehy)', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2108, N'Marcos Juárez', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2109, N'Margarita', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2110, N'Margarita Belén', 166)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2111, N'Mari Menuco', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2112, N'María Grande', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2113, N'María Ignacia  (Est. Vela)', 46)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2114, N'María Juana', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2115, N'María Luisa', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2116, N'María Magdalena', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2117, N'María Susana', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2118, N'María Teresa', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2119, N'Mariano Acosta', 103)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2120, N'Mariano Benítez', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2121, N'Mariano Boedo', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2122, N'Mariano H. Alfonzo  (Est. San Patricio)', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2123, N'Mariano I. Loza  (Est. Justino Solari)', 265)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2124, N'Mariano Moreno', 421)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2125, N'Mariano Unzué', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2126, N'Martín Coronado', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2127, N'Martín de Loyola', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2128, N'Martínez', 90)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2129, N'Mártires', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2130, N'Marull', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2131, N'Massey  (Est. Elordi)', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2132, N'Matará', 338)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2133, N'Matilde', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2134, N'Matorrales', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2135, N'Mattaldi', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2136, N'Mauricio Hirsch', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2137, N'Mauricio Mayer', 231)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2138, N'Máximo Fernández  (Est. Juan F. Salaberry)', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2139, N'Máximo Paz (Est. Paz)', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2140, N'Mayor Buratovich', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2141, N'Mayu Sumaj', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2142, N'Maza', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2143, N'Mbopicuá', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2144, N'Mburucuyá', 264)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2145, N'Mechita', 102)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2146, N'Mechita (Est. Mecha)', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2147, N'Mechongué', 87)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2148, N'Medanitos', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2149, N'Médanos', 293)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2150, N'Médanos', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2151, N'Medellín', 331)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2152, N'Media Naranja', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2153, N'Medina', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2154, N'Medrano', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2155, N'Medrano', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2156, N'Melincué (Est. San Urbano)', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2157, N'Melo', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2158, N'Mencué', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2159, N'Mendiolaza', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2160, N'Mendoza', 391)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2161, N'Mercedes', 56)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2162, N'Mercedes', 265)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2163, N'Merlo', 103)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2164, N'Merlo', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2165, N'Mesón de Fierro', 167)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2166, N'Metán Viejo', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2167, N'Metileo', 353)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2168, N'Mi Granja', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2169, N'Micaela Cascallares  (Est. Cascallares)', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2170, N'Miguel Cané', 359)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2171, N'Miguel Riglos', 358)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2172, N'Miguel Torres', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2173, N'Milagro', 365)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2174, N'Mina 3', 494)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2175, N'Mina 9 de Octubre', 305)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2176, N'Mina Clavero', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2177, N'Mina Providencia', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2178, N'Mina Santa Teresita', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2179, N'Minerva', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2180, N'Ministro Ramos Mexía', 433)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2181, N'Ministro Rivadavia', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2182, N'Mira Pampa', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2183, N'Miraflores', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2184, N'Miraflores', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2185, N'Miraflores', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2186, N'Miramar', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2187, N'Miramar', 87)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2188, N'Miranda', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2189, N'Misarrumi', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2190, N'Misión Chaqueña', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2192, N'Misión Kilómetro 6', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2193, N'Misión Tacaagle', 301)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2194, N'Misión Tierras Fiscales', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2195, N'Mocoretá', 266)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2196, N'Moctezuma', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2197, N'Mogna', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2198, N'Moisés Ville', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2199, N'Mojón de Fierro', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2200, N'Mojón Grande', 408)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2201, N'Mojones Norte', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2202, N'Molino Doll', 278)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2203, N'Molinos', 464)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2204, N'Mones Cazón', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2205, N'Monigotes', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2206, N'Monje', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2207, N'Monte  Ralo', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2208, N'Monte Buey', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2209, N'Monte Caseros', 266)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2210, N'Monte Chingolo', 77)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2211, N'Monte Comán', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2212, N'Monte de los Gauchos', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2213, N'Monte del Rosario', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2214, N'Monte Flores', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2215, N'Monte Grande', 3)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2216, N'Monte Hermoso', 94)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2217, N'Monte Leña', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2218, N'Monte Maíz', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2219, N'Monte Nievas', 231)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2220, N'Monte Potrero', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2221, N'Monte Quemado', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2222, N'Monte Ralo', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2223, N'Monte Vera', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2224, N'Monteagudo', 511)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2225, N'Montecarlo', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2226, N'Montecaseros', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2227, N'Montecristo', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2228, N'Montefiore', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2229, N'Monteros', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2230, N'Monterrico', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2231, N'Montes de Oca', 309)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2232, N'Moquehuá', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2233, N'Morales', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2234, N'Morea', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2235, N'Moreno', 75)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2236, N'Moron', 127)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2237, N'Morrison', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2238, N'Morse', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2239, N'Morteros', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2240, N'Mosmota', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2241, N'Mundo Nuevo', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2242, N'Muñiz', 95)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2243, N'Munro', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2244, N'Murphy', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2245, N'Mussi', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2246, N'Mutquin', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2247, N'Nácate', 370)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2248, N'Nahuel Mapá', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2249, N'Nahuel Niyeu', 440)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2250, N'Naicó', 357)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2251, N'Ñancay', 293)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2252, N'Ñanducita', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2253, N'Napaleofú', 110)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2254, N'Napalpí', 168)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2255, N'Napenay', 154)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2256, N'Naré', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2257, N'Naschel', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2258, N'Naupa Huen', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2259, N'Navarro', 63)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2260, N'Navia', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2261, N'Nazareno', 445)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2262, N'Necochea - Quequén', 66)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2263, N'Nelson', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2264, N'Nemesio Parma', 402)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2265, N'Neuquén', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2266, N'Nicanor Olivera  (Est. La Dulce)', 66)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2267, N'Nicolás Bruzzone', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2268, N'Niquivil', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2269, N'Ñirihuau', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2270, N'Noetinger', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2271, N'Noetinger', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2272, N'Nogolí', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2273, N'Nogoyá', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2274, N'Nono', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2275, N'Nonogasta', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2276, N'Norberto de la Riestra', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2277, N'Ñorquincó', 436)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2278, N'Norumbega', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2279, N'Nuestra Señora de Talavera', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2280, N'Nuestra Señora del Rosario de Caá Catí', 262)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2281, N'Nueva California', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2282, N'Nueva Escocia', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2283, N'Nueva Esperanza', 316)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2284, N'Nueva Esperanza', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2285, N'Nueva Francia', 326)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2286, N'Nueva Galia', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2287, N'Nueva Lehmann', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2288, N'Nueva Plata', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2289, N'NUEVA POMPEYA', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2290, N'Nueva Trinidad', 511)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2291, N'Nueva Vizcaya', 283)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2292, N'Nuevo Pirquitas', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2293, N'Nuevo Torino', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2294, N'Oasis', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2295, N'Oberá', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2296, N'Obispo Trejo', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2297, N'Obligado', 108)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2298, N'Ochandío', 12)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2299, N'Ocloyas', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2300, N'Octavio Pico', 415)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2301, N'O''Higgins', 28)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2302, N'Ojeda', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2303, N'Ojos de Agua', 436)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2304, N'Olacapato', 463)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2305, N'Olaeta', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2306, N'Olaroz Chico', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2307, N'Olascoaga', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2308, N'Olavarría', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2309, N'Olegario V. Andrade', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2310, N'Oliden', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2311, N'Oliva', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2312, N'Olivares de San Nicolás', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2313, N'Olivera', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2314, N'Oliveros', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2315, N'Olivos', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2316, N'Olpas', 365)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2317, N'Olta', 362)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2318, N'Onagoity', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2319, N'Oncativo', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2320, N'Open Door  (Est. Dr. Domingo Cabred)', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2321, N'Oratorio', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2322, N'Ordóñez', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2323, N'Ordoqui', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2324, N'Orense', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2325, N'Oriente', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2326, N'Oro Verde', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2327, N'Osvaldo Magnasco', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2328, N'Pablo Podestá', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2329, N'Pacará', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2330, N'Pacará', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2331, N'Pacheco de Melo', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2332, N'Padre Lozano', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2333, N'Pagancillo', 369)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2334, N'Paicone', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2335, N'Pajas Blancas', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2336, N'Pala Pala', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2337, N'Palacios', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2338, N'Palma Sola', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2339, N'Palma Sola', 29)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2340, N'Palmar Grande', 262)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2341, N'Palo Blanco', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2342, N'Palo Labrado', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2343, N'Palo Negro', 313)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2344, N'Palo Santo', 298)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2345, N'Palos Blancos', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2346, N'Palpalá (Est. Gral. Manuel N. Savio)', 305)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2347, N'Pampa Almirón', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2348, N'Pampa Blanca', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2349, N'Pampa de los Guanacos', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2350, N'Pampa del Indio', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2351, N'Pampa del Infierno', 172)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2352, N'Pampa Landriel', 167)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2353, N'Pampa Vieja', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2354, N'Pampayasta Norte', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2355, N'Pampayasta Sur', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2356, N'Pampichuela', 220)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2357, N'Panaholma', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2358, N'Panambí', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2359, N'Panambí Kilómetro 8', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2360, N'Papagayos', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2361, N'Papagayos', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2362, N'Parada Acuña', 266)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2363, N'Parada Orlando', 98)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2364, N'Parada Pucheta', 276)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2365, N'Parada Robles - Pavón', 98)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2366, N'Paraíso', 410)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2367, N'Paraje 29', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2368, N'Paraje Chaco Chico', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2369, N'Paraje La Costa', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2370, N'Paraje La Virgen', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2371, N'Paraje San Manuel', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2372, N'Paraná', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2373, N'Parapetí', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2374, N'Pardo', 33)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2375, N'Pareditas', 379)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2376, N'Parera', 354)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2377, N'Parque Calmayo', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2378, N'Pascanas', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2379, N'Pasco', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2380, N'Pasman', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2381, N'Paso Aguerre', 423)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2382, N'Paso Córdova', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2383, N'Paso Córdova', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2384, N'Paso de Indios', 188)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2385, N'Paso de la Laguna', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2386, N'Paso de la Patria', 267)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2387, N'Paso de los Libres', 276)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2388, N'Paso del Durazno', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2389, N'Paso del Durazno', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2390, N'Paso Del Rey', 75)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2391, N'Paso del Sapo', 189)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2392, N'Paso Flores', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2393, N'Paso Grande', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2394, N'Paso Viejo', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2395, N'Pasteur', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2396, N'Pastos Chicos', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2397, N'Patay', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2398, N'Patquía', 360)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2399, N'Patricios', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2400, N'Paula', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2401, N'Paulina', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2402, N'Pavón', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2403, N'Pavón', 52)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2404, N'Pavón Arriba', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2405, N'Payogasta', 457)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2406, N'Pearson', 515)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2407, N'Pedernal', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2408, N'Pedernal', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2409, N'Pedernales', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2410, N'Pedro Gómez Cello', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2411, N'Pedro Luro', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2412, N'Pedro R. Fernández (Est. Manuel F. Mantilla)', 272)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2413, N'Pehuajó', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2414, N'Pellegrini', 18)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2415, N'Peñas Blancas', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2416, N'Península Ruca Co', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2417, N'Perdriel', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2418, N'Pereyra', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2419, N'Pérez', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2420, N'Pérez Millán', 124)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2421, N'Pergamino', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2422, N'Perico', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2423, N'Perito Moreno', 497)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2424, N'Perú', 226)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2425, N'Perugorría', 255)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2426, N'Peyrano', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2427, N'Phillips', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2428, N'Piamonte', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2429, N'Pichanal', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2430, N'Pichi Huinca', 354)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2431, N'Pichincha', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2432, N'Pico Truncado', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2433, N'Picún Leufú', 423)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2434, N'Pie de Palo', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2435, N'Piedra del Águila', 426)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2436, N'Piedrabuena', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2437, N'Piedras Blancas', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2438, N'Piedritas', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2439, N'Piedritas', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2440, N'Pieres', 111)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2441, N'Pigüé', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2442, N'Pila', 100)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2443, N'Pilar', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2444, N'Pilar', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2445, N'Pilcaniyeu', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2446, N'Pilquiniyeu', 435)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2447, N'Pilquiniyeu del Limay', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2448, N'Piñalito Sur', 410)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2449, N'Pinamar', 101)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2450, N'Pincén', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2451, N'Pinchas', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2452, N'Pindapoy', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2453, N'Piñero (Est. Erasto)', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2454, N'Pineyro', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2455, N'Pinzón', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2456, N'Pipinas', 79)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2457, N'Piquete Cabado', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2458, N'Piquillín', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2459, N'Piquirenda', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2460, N'Pirané', 298)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2461, N'Piray Kilómetro 18', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2462, N'Pirovano', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2463, N'Pismanta', 467)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2464, N'Pituil', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2465, N'Pla', 102)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2466, N'Plátanos', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2467, N'Playa Magagna', 190)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2468, N'Playa Unión', 190)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2469, N'Playas Doradas', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2470, N'Plaza Clucellas', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2471, N'Plaza de Mercedes', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2472, N'Plaza Huincul', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2473, N'Plaza Luxardo', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2474, N'Plaza Matilde', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2475, N'Plaza Saguier', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2476, N'Plaza San Francisco', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2477, N'Plaza Vieja', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2478, N'Plomer', 69)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2479, N'Plottier', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2480, N'Pluma de Pato', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2504, N'Pobre Diablo', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2505, N'Polco', 363)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2506, N'Polvaredas', 17)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2507, N'Polvaredas', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2508, N'Pomán', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2509, N'Pomancillo Este', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2510, N'Pomancillo Oeste', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2511, N'Pomona', 434)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2512, N'Pontaut', 51)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2513, N'Pontevedra', 103)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2514, N'Porteña', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2515, N'Portezuelo', 370)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2516, N'Portón Negro', 301)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2517, N'Porvenir', 104)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2518, N'Posadas', 402)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2519, N'Poscaya', 445)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2520, N'Posta Cambio Zalazar', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2521, N'Potrerillo', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2522, N'Potrerillos', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2523, N'Potrero de Garay', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2524, N'Potrero de los Funes', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2525, N'Pozo Betbeder', 316)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2526, N'Pozo Borrado', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2527, N'Pozo de los Indios', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2528, N'Pozo de Maza', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2529, N'Pozo del Molle', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2530, N'Pozo del Mortero', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2531, N'Pozo del Tigre', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2532, N'Pozo Hondo', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2533, N'Pozo Nuevo', 243)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2534, N'Pozo Salado', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2535, N'Pozuelos', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2536, N'Prahuaniyeu', 433)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2537, N'Presa El Tunal', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2538, N'Presidencia de la Plaza', 169)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2539, N'Presidencia Roca', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2540, N'Presidencia Roque Sáenz Peña', 170)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2541, N'Presidente Roca', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2542, N'Profesor Salvador Mazza', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2543, N'Profundidad', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2544, N'Progreso', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2545, N'Pronunciamiento', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2546, N'Providencia', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2547, N'Puán', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2548, N'Pueblo Andino', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2549, N'Pueblo Arrúa (Est. Alcaraz)', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2550, N'Pueblo Bellocq (Est. Las Garzas)', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2551, N'Pueblo Brugo', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2552, N'Pueblo Cazes', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2553, N'Pueblo Comechingones', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2554, N'Pueblo Doyle', 108)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2555, N'Pueblo Esther', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2556, N'Pueblo General Belgrano', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2557, N'Pueblo General San Martín', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2558, N'Pueblo Gouin', 24)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2559, N'Pueblo Illia', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2560, N'Pueblo Independencia', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2561, N'Pueblo Italiano', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2562, N'Pueblo Liebig''s', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2563, N'Pueblo Marini', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2564, N'Pueblo Muñoz (Est. Bernard)', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2565, N'Pueblo Nuevo', 105)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2566, N'Pueblo Pablo Torelo (Est. Otumpa)', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2567, N'Pueblo San Jorge', 105)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2568, N'Pueblo Santa Lucía', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2569, N'Pueblo Uranga', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2570, N'Pueblo Viejo', 458)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2571, N'Puelches', 355)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2572, N'Puelén', 223)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2573, N'Puente de Hierro', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2574, N'Puente del Inca', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2575, N'Puente Lavayén', 29)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2576, N'Puerta de Corral Quemado', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2577, N'Puerta de San José', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2578, N'Puerto Aragón', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2579, N'Puerto Arroyo Seco', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2580, N'Puerto Bermejo Nuevo', 171)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2581, N'Puerto Bermejo Viejo', 171)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2582, N'Puerto Deseado', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2583, N'Puerto Eva Perón', 171)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2584, N'Puerto General San Martín', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2585, N'Puerto Iguazú', 413)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2586, N'Puerto Las Cuevas', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2587, N'Puerto Lavalle', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2588, N'Puerto Leoni', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2589, N'Puerto Mado', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2590, N'Puerto Madryn', 191)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2591, N'Puerto Paraná', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2592, N'Puerto Pilcomayo', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2593, N'Puerto Pinares', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2594, N'Puerto Pirámide', 191)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2595, N'Puerto Piray', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2596, N'Puerto Reconquista', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2597, N'Puerto Rico', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2598, N'Puerto Ruiz', 286)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2599, N'Puerto San Antonio Este', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2600, N'Puerto San Julián', 498)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2601, N'Puerto Santa Ana', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2602, N'Puerto Santa Cruz', 499)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2603, N'Puerto Tirol', 163)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2604, N'Puerto Vilelas', 153)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2605, N'Puerto Yeruá', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2606, N'Puesto de Castro', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2607, N'Puesto de San Antonio', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2608, N'Puesto del Marquéz', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2609, N'Puesto Sey', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2610, N'Puesto Viejo', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2611, N'Pujato', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2612, N'Pumahuasi', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2613, N'Punta Alta  (Est Almirante Solier)', 123)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2614, N'Punta Colorada', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2615, N'Punta de Balasto', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2616, N'Punta de los Llanos', 373)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2617, N'Punta de Vacas', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2618, N'Punta del Agua', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2619, N'Punta del Agua', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2620, N'Punta del Agua', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2621, N'Punta del Médano', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2622, N'Punta Indio', 79)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2623, N'Purmamarca', 216)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2624, N'Quebracho Herrado', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2625, N'Quebrada de los Pozos', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2626, N'Quebrada de Luna', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2627, N'Quehué', 233)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2628, N'Quemú Quemú', 359)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2629, N'Quenumá', 109)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2630, N'Quetrequén', 354)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2631, N'Quilino', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2632, N'Quilmes', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2633, N'Quilmes Oeste', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2634, N'Quimilí', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2635, N'Quines', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2636, N'Quinta El Mirador', 191)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2637, N'Quinto Cuartel', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2638, N'Quirós', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2639, N'Quitilipi', 176)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2640, N'Rada Tilly', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2641, N'Rafael Calzada', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2642, N'Rafael Castillo', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2643, N'Rafael García', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2644, N'Rafael Obligado', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2645, N'Rafaela', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2646, N'Rama Caída', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2647, N'Ramada Paso', 268)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2648, N'Ramallo', 124)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2649, N'Ramayón', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2650, N'Ramblones', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2651, N'Ramírez de Velazco', 329)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2652, N'Ramón Biaus', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2653, N'Ramón J. Cárcano', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2654, N'Ramon M. Castro', 421)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2655, N'Ramón Santamarina', 66)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2656, N'Ramona', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2657, N'Ramos Mejía', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2658, N'Ramos Otero', 110)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2659, N'Rancagua', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2660, N'Ranchillos', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2661, N'Ranchos', 14)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2662, N'Rancul', 354)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2663, N'Ranelagh', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2664, N'Ranqueles', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2665, N'Rapelli', 316)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2666, N'Rauch', 107)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2667, N'Rawson', 28)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2668, N'Rawson', 190)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2669, N'Rawson', 476)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2670, N'Rayo Cortado', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2671, N'Real del Padre', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2672, N'Real Sayana', 325)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2673, N'Realicó', 232)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2674, N'Recalde', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2675, N'Recaredo', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2676, N'Reconquista', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2677, N'Recreo', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2678, N'Recreo', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2679, N'Reducción de Abajo', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2680, N'Relmo', 359)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2681, N'Remedios De Escalada', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2682, N'Remedios Escalada De San Martin', 77)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2683, N'Renca', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2684, N'Resistencia', 153)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2685, N'Reta', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2686, N'Riacho He-He', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2687, N'Riacho Negro', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2688, N'Riachuelo', 270)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2689, N'Ricardo Rojas', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2690, N'Ricardone', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2691, N'Rincón', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2692, N'Rincón', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2693, N'Rincón de Azara', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2694, N'Rincón de los Sauces', 415)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2695, N'Rincón de Milberg', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2696, N'Rincón de Nogoyá', 278)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2697, N'Rincón Potrero', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2698, N'Rinconada', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2699, N'Rinconadillas', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2700, N'Río Bamba', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2701, N'Río Ceballos', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2702, N'Río Chico', 508)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2703, N'Río Chico (Est. Cerro Mesa)', 436)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2704, N'Río Colorado', 437)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2705, N'Río Colorado', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2706, N'Río Cuarto', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2707, N'Río de los Sauces', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2708, N'Río del Valle', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2709, N'Río Gallegos', 494)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2710, N'Río Grande', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2711, N'Río Grande', 340)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2712, N'Río Juan Gómez', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2713, N'Río Mayo', 179)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2714, N'Río Muerto', 172)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2715, N'Río Pico', 185)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2716, N'Río Piedras', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2717, N'Río Primero', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2718, N'Río Seco', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2719, N'Río Segundo', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2720, N'Río Tala', 108)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2721, N'Río Tercero', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2722, N'Rio Villegas', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2723, N'Riocito', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2724, N'Rivadavia', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2725, N'Rivadavia', 477)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2726, N'Rivadavia', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2727, N'Rivera', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2728, N'Roberto Cano', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2729, N'Roberto J. Payró', 11)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2730, N'Roberts', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2731, N'Roca Chica', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2732, N'Rocamora', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2733, N'Rodeito', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2734, N'Rodeo', 467)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2735, N'Rodeo de Valdez', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2736, N'Rodeo del Medio', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2737, N'Rodríguez Peña', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2738, N'Rojas', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2739, N'Roldán', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2740, N'Rolón', 358)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2741, N'Romang', 504)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2742, N'Roosevelt', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2743, N'Roque Pérez', 23)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2744, N'Rosales', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2745, N'Rosario', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2746, N'Rosario de la Frontera', 459)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2747, N'Rosario de Lerma', 460)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2748, N'Rosario de Río Grande', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2749, N'Rosario del Saladillo', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2750, N'Rosario del Tala', 289)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2751, N'Rospentek', 494)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2752, N'Roversi', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2753, N'Rucanelo', 231)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2754, N'Rueda', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2755, N'Rufino', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2756, N'Ruiz de Montoya', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2759, N'Russell', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2760, N'Sa Pereyra', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2761, N'SAAVEDRA', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2762, N'Sacanta', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2763, N'Sachayoj', 327)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2764, N'Saenz Peña', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2765, N'Saforcada', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2766, N'Sagrada Familia', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2767, N'Saira', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2768, N'Saladas', 269)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2769, N'Saladero Mariano Cabal', 207)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2770, N'Saladillo', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2771, N'Saladillo', 17)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2772, N'Saladillo', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2773, N'Salazar', 73)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2774, N'Saldán', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2775, N'Saldungaray', 117)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2776, N'Salicas - San Blas', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2777, N'Salinas del Bebedero', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2778, N'Salliqueló', 109)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2779, N'Salsacate', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2780, N'Salsipuedes', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2781, N'Salta', 443)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2782, N'Salto', 71)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2783, N'Salto de Las Rosas', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2784, N'Salto Encantado', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2785, N'Salto Grande', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2786, N'Salvador María', 8)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2787, N'Samborombón', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2788, N'Sampacho', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2789, N'Samuhú', 175)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2790, N'San Agustín', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2791, N'San Agustín', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2792, N'San Agustín', 110)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2793, N'San Agustín', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2794, N'San Alberto', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2795, N'San Andrés', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2796, N'San Andrés de Giles', 120)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2797, N'San Antonio', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2798, N'San Antonio', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2799, N'San Antonio', 257)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2800, N'San Antonio', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2801, N'San Antonio', 370)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2802, N'San Antonio', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2803, N'San Antonio', 149)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2804, N'San Antonio', 215)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2805, N'San Antonio de Areco', 40)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2806, N'San Antonio de Arredondo', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2807, N'San Antonio de Litín', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2808, N'San Antonio de los Cobres', 463)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2809, N'San Antonio de Obligado', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2810, N'San Antonio De Padua', 103)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2811, N'San Antonio Oeste', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2812, N'San Basilio', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2813, N'San Benito', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2814, N'San Bernardo', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2815, N'San Bernardo', 162)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2816, N'San Bernardo  (Est. Guanaco)', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2817, N'San Carlos', 257)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2818, N'San Carlos', 379)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2819, N'San Carlos', 462)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2820, N'San Carlos Centro', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2821, N'San Carlos de Bariloche', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2822, N'San Carlos de Bolívar  (Est. Bolívar)', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2823, N'San Carlos Minas', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2824, N'San Carlos Norte', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2825, N'San Carlos Sud', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2826, N'San Cayetano', 12)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2827, N'San Cayetano', 270)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2828, N'San Clemente', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2829, N'San Clemente del Tuyú', 85)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2830, N'San Cosme', 267)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2831, N'San Cristóbal', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2832, N'San Eduardo', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2833, N'San Emilio', 81)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2834, N'San Enrique', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2835, N'San Esteban', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2836, N'San Eugenio', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2837, N'San Fabián', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2838, N'San Felipe', 459)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2839, N'San Fernando', 130)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2840, N'San Fernando del Valle de Catamarca', 150)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2841, N'San Francisco', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2842, N'San Francisco', 220)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2843, N'San Francisco de Alfarcito', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2844, N'San Francisco de Asís', 400)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2845, N'San Francisco de Bellocq', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2846, N'San Francisco de Laishi', 300)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2847, N'San Francisco de Santa Fe', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2848, N'San Francisco del Chañar', 243)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2849, N'San Francisco del Monte de Oro', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2850, N'San Francisco Solano', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2851, N'San Francisco Solano', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2852, N'San Genaro', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2853, N'San Genaro Norte', 206)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2854, N'San Germán', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2855, N'San Gerónimo', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2856, N'San Gotardo', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2857, N'San Gregorio', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2858, N'San Guillermo', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2859, N'San Gustavo', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2860, N'San Hilario', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2861, N'San Huberto', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2862, N'San Ignacio', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2863, N'San Ignacio (Loteo San Javier)', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2864, N'San Ignacio (Loteo Vélez Crespo)', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2865, N'San Isidro', 90)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2866, N'San Isidro', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2867, N'San Isidro', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2868, N'San Isidro', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2869, N'San Isidro (Est. Los Angacos)', 478)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2870, N'San Jaime de la Frontera', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2871, N'San Javier', 504)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2872, N'San Javier', 408)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2873, N'San Javier', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2874, N'San Javier y Yacanto', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2875, N'San Jerónimo', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2876, N'San Jerónimo del Sauce', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2877, N'San Jerónimo Norte', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2878, N'San Jerónimo Sud', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2879, N'San Joaquín', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2880, N'San Jorge', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2881, N'San Jose', 106)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2882, N'San José', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2883, N'San José', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2884, N'San José', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2885, N'San José', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2886, N'San José', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2887, N'San José', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2888, N'San José', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2889, N'San José de Feliciano', 291)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2890, N'San José de Jáchal', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2891, N'San José de La Cocha', 350)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2892, N'San José de la Dormida', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2893, N'San José de la Esquina', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2894, N'San José de las Salinas', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2895, N'San José de Metán', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2896, N'San José de Orquera', 452)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2897, N'San José del Boquerón', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2898, N'San José del Morro', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2899, N'San José del Rincón', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2900, N'San Juan', 479)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2901, N'San Juan de Oros', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2902, N'San Juan de Quillaqués', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2903, N'San Juancito', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2904, N'San Justo', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2905, N'San Justo', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2906, N'San Lorenzo', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2907, N'San Lorenzo', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2908, N'San Lorenzo', 269)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2909, N'San Lucas', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2910, N'San Luis', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2911, N'San Luis del Palmar', 271)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2912, N'San Manuel', 111)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2913, N'San Marcos', 445)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2914, N'San Marcos', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2915, N'San Marcos Sierra', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2916, N'San Mariano', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2917, N'San Martín', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2918, N'San Martín', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2919, N'San Martín', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2920, N'San Martín', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2921, N'San Martín', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2922, N'San Martín de las Escobas', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2923, N'San Martín de los Andes', 424)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2924, N'San Martín I', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2925, N'San Martín II', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2926, N'San Martín Norte', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2927, N'San Mauricio', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2928, N'San Mayol', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2929, N'San Miguel', 95)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2930, N'San Miguel', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2931, N'San Miguel', 263)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2932, N'San Miguel', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2933, N'San Miguel de Tucumán (Est. Tucumán)', 510)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2934, N'San Miguel del Monte  (Est. Monte)', 4)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2935, N'San Nicolás', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2936, N'San Nicolás', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2937, N'San Nicolás de los Arroyos', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2938, N'San Pablo', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2939, N'San Pablo', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2940, N'San Patricio del Chañar', 425)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2941, N'San Pedro', 108)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2942, N'San Pedro', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2943, N'San Pedro', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2944, N'San Pedro', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2945, N'San Pedro', 410)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2946, N'San Pedro', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2947, N'San Pedro', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2948, N'San Pedro', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2949, N'San Pedro', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2950, N'San Pedro', 147)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2951, N'San Pedro', 328)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2952, N'San Pedro (Est. San Pedro de Jujuy)', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2953, N'San Pedro de Colalao', 347)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2954, N'San Pedro de Gütemberg', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2955, N'San Pedro de Toyos', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2956, N'San Pedro Norte', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2957, N'San Rafael', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2958, N'San Ramón de la Nueva Orán', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2959, N'San Román', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2960, N'San Roque', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2961, N'San Roque', 272)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2962, N'San Roque', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2963, N'San Roque', 349)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2964, N'San Salvador', 285)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2965, N'San Salvador de Jujuy (Est. Jujuy)', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2966, N'San Sebastián', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2967, N'San Severo', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2968, N'San Vicente', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2969, N'San Vicente', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2970, N'San Vicente', 401)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2971, N'San Víctor', 291)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2972, N'Sanabria', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2973, N'Sancti Spiritu', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2974, N'Sanford', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2975, N'Sañogasta', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2976, N'Sansinena', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2977, N'Santa Ana', 267)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2978, N'Santa Ana', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2979, N'Santa Ana', 220)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2980, N'Santa Ana', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2981, N'Santa Ana', 508)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2982, N'Santa Anita', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2983, N'Santa Catalina', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2984, N'Santa Catalina', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2985, N'Santa Catalina (Est. Holmberg)', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2986, N'Santa Clara', 29)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2987, N'Santa Clara de Buena Vista', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2988, N'Santa Clara de Saguier', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2989, N'Santa Clara del Mar', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2990, N'Santa Coloma', 13)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2991, N'Santa Cruz', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2992, N'Santa Cruz', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2993, N'Santa Cruz', 511)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2994, N'Santa Elena', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2995, N'Santa Elena', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2996, N'Santa Elena', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2997, N'Santa Eleodora', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2998, N'Santa Eufemia', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (2999, N'Santa Fe', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3000, N'Santa Florentina', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3001, N'Santa Isabel', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3002, N'Santa Isabel', 356)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3003, N'Santa Lucía', 108)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3004, N'Santa Lucía', 261)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3005, N'Santa Lucía', 480)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3006, N'Santa Lucía', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3007, N'Santa Luisa', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3008, N'Santa Magdalena (Est. Jovita)', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3009, N'Santa Margarita', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3010, N'Santa María', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3011, N'Santa María', 409)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3012, N'Santa María', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3013, N'Santa María', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3014, N'Santa María', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3015, N'Santa María de Oro', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3016, N'Santa María de Punilla', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3017, N'Santa Regina', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3018, N'Santa Rita', 400)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3019, N'Santa Rita de Catuna', 365)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3020, N'Santa Rosa', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3021, N'Santa Rosa', 273)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3022, N'Santa Rosa', 227)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3023, N'Santa Rosa', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3024, N'Santa Rosa', 381)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3025, N'Santa Rosa de Calamuchita', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3026, N'Santa Rosa de Calchines', 207)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3027, N'Santa Rosa de Leales', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3028, N'Santa Rosa de los Pastos Grandes', 463)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3029, N'Santa Rosa de Río Primero', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3030, N'Santa Rosa del Conlara', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3031, N'Santa Sylvina', 174)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3032, N'Santa Teresa', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3033, N'Santa Teresa', 226)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3034, N'Santa Teresita - Mar del Tuyú', 85)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3035, N'Santa Trinidad', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3036, N'Santa Vera Cruz', 368)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3037, N'Santa Victoria', 445)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3038, N'Santa Victoria Este', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3039, N'Santiago del Estero', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3040, N'Santiago Temple', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3041, N'Santo Domingo', 78)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3042, N'Santo Domingo', 361)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3043, N'Santo Domingo', 316)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3044, N'Santo Domingo', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3045, N'Santo Pipó', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3046, N'Santo Tomás', 426)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3047, N'Santo Tomé', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3048, N'Santo Tomé', 274)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3049, N'Santos Lugares', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3050, N'Santos Lugares', 327)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3051, N'Santuario de Tres Pozos', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3052, N'Santurce', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3053, N'Sarah', 229)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3054, N'Sarandí', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3055, N'Sarasa', 515)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3056, N'Sargento Cabral', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3057, N'Sargento Moya', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3058, N'Sargento Vidal', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3059, N'Sarmiento', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3060, N'Sarmiento', 209)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3061, N'Sarmiento', 180)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3062, N'Sastre', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3063, N'Saturnino María Laspiur', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3064, N'Sauce', 275)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3065, N'Sauce Arriba', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3066, N'Sauce de Luna', 283)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3067, N'Sauce Montrull', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3068, N'Sauce Pinto', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3069, N'Sauce Viejo', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3070, N'Saujil', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3071, N'Saujil', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3072, N'Sauzal', 214)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3073, N'Sauzal', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3074, N'Sebastián Elcano', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3075, N'Seclantás', 464)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3076, N'Seeber', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3077, N'Seguí', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3078, N'Segunda Usina', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3079, N'Selva', 313)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3080, N'Selvas del Río de Oro', 157)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3081, N'Senillosa', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3082, N'Serodino', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3083, N'Serrano', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3084, N'Serrezuela', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3085, N'Sevigne', 38)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3086, N'Sierra Chica', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3087, N'Sierra Colorada', 433)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3088, N'Sierra de la Ventana', 117)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3089, N'Sierra de los Padres', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3090, N'Sierra Grande', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3091, N'Sierra Pailemán', 440)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3092, N'Sierras Bayas', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3093, N'Siete Palmas', 297)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3094, N'Siján', 140)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3095, N'Silva (Est. Abipones)', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3096, N'Silvio Pellico', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3097, N'Simbol', 326)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3098, N'Simbolar', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3099, N'Simbolar', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3100, N'Simoca', 511)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3101, N'Singuil', 146)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3102, N'Sinsacate', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3103, N'Sir Leonard', 280)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3104, N'Smith', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3105, N'Socavones', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3106, N'Sol de Julio', 314)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3107, N'Solanet', 70)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3108, N'Solar de los Molinos', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3109, N'Soldado Maldonado', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3110, N'Soldini', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3111, N'Soledad', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3112, N'Solís', 120)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3113, N'Sosa', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3114, N'Speluzzi', 224)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3115, N'Stephenson', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3116, N'Stroeder', 114)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3117, N'Suardi', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3118, N'Subteniente Perín', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3119, N'Suco', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3120, N'Suipacha', 53)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3121, N'Sumamao', 326)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3122, N'Sumampa', 329)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3123, N'Sumampa Viejo', 329)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3124, N'Sunchales', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3125, N'Suncho Corral', 338)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3126, N'Sundblad', 7)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3127, N'Susana', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3128, N'Susques', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3129, N'Tabay', 273)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3130, N'Tabossi', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3131, N'Taco Pozo', 172)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3132, N'Taco Ralo', 348)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3133, N'Tacuarendí (Emb. Kilómetro 421)', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3134, N'Tacural', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3135, N'Tafí del Valle', 342)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3136, N'Tafí Viejo', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3137, N'Tala Cañada', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3138, N'Tala Huasi', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3139, N'Talaini', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3140, N'Talapampa', 450)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3141, N'Talita', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3142, N'Tama', 373)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3143, N'Tamangueyú', 111)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3144, N'Tamberías', 469)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3145, N'Tamberías', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3146, N'Tancacha', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3147, N'Tandil', 46)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3148, N'Taninga', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3149, N'Tanti', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3150, N'Tapalqué', 118)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3151, N'Tapebicuá', 276)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3152, N'Tapiales', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3153, N'Tapso', 152)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3154, N'Tapso', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3155, N'Taquimilán', 416)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3156, N'Tartagal', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3157, N'Tartagal (Est. El Tajamar)', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3158, N'Taruma', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3159, N'Tasna', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3160, N'Tatané', 300)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3161, N'Tatón', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3162, N'Tecka', 189)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3163, N'Tedín Uriburu', 115)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3164, N'Telén', 352)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3165, N'Tellier', 496)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3166, N'Telsen', 184)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3167, N'Temperley', 121)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3168, N'Teniente Berdina', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3169, N'Teniente Origone', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3170, N'Teodelina', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3171, N'Termas de Río Hondo', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3172, N'Tezanos Pintos', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3173, N'Thames', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3174, N'Theobald', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3175, N'Ticino', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3176, N'Tigre', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3177, N'Tilcara', 217)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3178, N'Tilimuqui', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3179, N'Tilisarao', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3180, N'Timbúes', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3181, N'Timote', 32)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3182, N'Tinoco', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3183, N'Tinogasta', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3184, N'Tintina', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3185, N'Tío Pujio', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3186, N'Toay', 357)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3187, N'Toba', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3188, N'Tobantirenda', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3189, N'Tobuna', 410)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3190, N'Todd', 9)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3191, N'Tolar Grande', 463)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3192, N'Toledo', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3193, N'Tolhuin', 340)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3194, N'Tolloche', 447)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3195, N'Tolombón', 444)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3196, N'Tomás Jofré', 56)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3197, N'Tomas M. Anchorena', 358)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3198, N'Tomás Young', 318)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3199, N'Tornquist', 117)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3200, N'Toro Pujio', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3201, N'Torres', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3202, N'Tortugas', 309)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3203, N'Tortuguitas', 37)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3204, N'Tortuguitas', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3205, N'Tosno', 242)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3206, N'Tosquitas', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3207, N'Tostado', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3208, N'Totoras', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3209, N'Traill', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3210, N'Tramo 16', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3211, N'Tramo 20', 323)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3212, N'Tranquitas', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3213, N'Tránsito', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3214, N'Trebolares', 224)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3215, N'Trelew', 190)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3216, N'Trenel', 353)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3217, N'Treneta', 433)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3218, N'Trenque Lauquen', 2)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3219, N'Tres Algarrobos  (Est. Cuenca)', 32)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3220, N'Tres Arroyos', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3221, N'Tres Capones', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3222, N'Tres Cruces', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3223, N'Tres Isletas', 173)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3224, N'Tres Lagos', 500)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3225, N'Tres Lagunas', 301)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3226, N'Tres Lomas', 116)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3227, N'Tres Picos', 117)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3228, N'Tres Porteñas', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3229, N'Tres Sargentos', 24)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3230, N'Trevelín', 192)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3231, N'Tricao Malal', 427)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3232, N'Trinchera', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3233, N'Tristán Suarez', 64)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3234, N'Trujui', 75)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3235, N'Tuclame', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3236, N'Tudcum', 467)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3237, N'Tumbaya', 216)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3238, N'Tunuyán', 394)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3239, N'Tupelí', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3240, N'Tupungato', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3241, N'Turdera', 121)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3242, N'Tusaquillas', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3243, N'Ubajay', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3244, N'Ucacha', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3245, N'Udaquiola', 70)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3246, N'Ugarteche', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3247, N'Ulapes', 374)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3248, N'Unanué', 233)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3249, N'Unión', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3250, N'Unquillo', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3251, N'Uquía (Est. Senador Pérez)', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3252, N'Urdampilleta', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3253, N'Urdinarrain', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3254, N'Uribelarrea', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3255, N'Uriburu', 235)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3256, N'Urundel', 449)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3257, N'Urutaú', 324)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3258, N'Ushuaia', 339)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3259, N'Usno', 468)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3260, N'Uspallata', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3261, N'Va Ma Irene De Los Remedios De Escalada', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3262, N'Vaca Huañuna', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3263, N'Valcheta', 440)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3264, N'Valdés', 43)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3265, N'Valentín Alsina', 77)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3266, N'Valle Alegre', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3267, N'Valle Azul', 441)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3268, N'Valle Colorado', 220)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3269, N'Valle de Anisacate', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3270, N'Valle Grande', 220)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3271, N'Valle Hermoso', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3272, N'Valle Hermoso', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3273, N'Vallecito', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3274, N'Vaqueros', 454)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3275, N'Varvarco', 422)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3276, N'Vásquez', 5)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3277, N'Vedia', 65)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3278, N'Velloso', 118)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3279, N'Venado Tuerto', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3280, N'Venados Grandes', 174)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3281, N'Vera (Est. Gobernador Vera)', 208)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3282, N'Vera y Pintado (Est. Guaraníes)', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3283, N'Verónica', 79)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3284, N'Vértiz', 229)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3285, N'Viale', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3286, N'Viamonte', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3287, N'Vicente Casares', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3288, N'Vicente López', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3289, N'Vichigasta', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3290, N'Victoria', 130)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3291, N'Victoria', 278)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3292, N'Victorica', 352)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3293, N'Vicuña Mackenna', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3294, N'Videla', 204)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3295, N'Viedma', 442)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3296, N'Vieytes', 11)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3297, N'Vila', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3298, N'Vilelas', 338)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3299, N'Vilismán', 152)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3300, N'Villa  de Trancas', 347)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3301, N'Villa  Eduardo Madero', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3302, N'Villa  Elisa', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3303, N'Villa Aberastain - La Rinconada', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3304, N'Villa Adelina', 90)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3305, N'Villa Adelina', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3306, N'Villa Akerman', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3307, N'Villa Alberdi', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3308, N'Villa Albertina', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3309, N'Villa Alfredo Fortabat', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3310, N'Villa Allende', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3311, N'Villa Alpina', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3312, N'Villa Alsina  (Est. Alsina)', 13)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3313, N'Villa Amancay', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3314, N'Villa Amelia', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3315, N'Villa Ana', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3316, N'Villa Angela', 160)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3317, N'Villa Angélica  (Est. El Socorro)', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3318, N'Villa Antigua', 386)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3319, N'Villa Ascasubi', 238)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3320, N'Villa Atamisqui', 331)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3321, N'Villa Atuel', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3322, N'Villa Atuel Norte', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3323, N'Villa Ayacucho', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3324, N'Villa Ballester', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3325, N'Villa Barbosa - Villa Nacusi', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3326, N'Villa Basilio Nievas', 481)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3327, N'Villa Belgrano', 513)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3328, N'Villa Benjamín Aráoz', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3329, N'Villa Berna', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3330, N'Villa Bernardo Monteagudo', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3331, N'Villa Berthet', 175)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3332, N'Villa Bolaños', 476)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3333, N'Villa Bonita', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3334, N'Villa Borjas - La Chimbera', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3335, N'Villa Bosch (Est. Juan Maria Bosch)', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3336, N'Villa Brown', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3337, N'Villa Burruyacú', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3338, N'Villa Cacique  (Est. Alfredo Fortabat)', 115)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3339, N'Villa Campanario', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3340, N'Villa Cañás', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3341, N'Villa Candelaria', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3342, N'Villa Carlos Paz', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3343, N'Villa Carmela', 514)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3344, N'Villa Castelar  (Est. Erize)', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3345, N'Villa Castelli', 375)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3346, N'Villa Catedral', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3347, N'Villa Centenario', 121)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3348, N'Villa Centenario', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3349, N'Villa Cerro Azul', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3350, N'Villa Chacabuco', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3351, N'Villa Chicligasta', 511)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3352, N'Villa Ciudad de América (Loteo Diego de Rojas)', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3353, N'Villa Ciudad Parque Los Reartes (1a. Sección)', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3354, N'Villa Ciudad Parque Los Reartes (3a. Sección)', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3355, N'Villa Clara', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3356, N'Villa Clodomiro Hileret', 508)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3357, N'Villa Concepción del Tío', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3358, N'Villa Constitución', 503)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3359, N'Villa Córdoba', 261)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3360, N'Villa Coronel Jose M. Zapiola', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3361, N'Villa Cura Brochero', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3362, N'Villa de Balcozna', 144)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3363, N'Villa de la Quebrada', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3364, N'Villa de las Rosas', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3365, N'Villa de Leales', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3366, N'Villa de María', 239)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3367, N'Villa De Mayo', 57)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3368, N'Villa de Pocho', 249)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3369, N'Villa de Praga', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3370, N'Villa de Soto', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3371, N'Villa del Carmen', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3372, N'Villa del Carmen', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3373, N'Villa del Curi Leuvú', 427)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3374, N'Villa del Dique', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3375, N'Villa del Mar', 123)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3376, N'VILLA DEL PARQUE', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3377, N'Villa del Plata', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3378, N'Villa del Prado', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3379, N'Villa del Rosario', 196)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3380, N'Villa del Rosario', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3381, N'Villa del Totoral', 248)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3382, N'Villa del Tránsito', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3383, N'Villa Dolores', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3384, N'Villa Domínguez', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3385, N'Villa Dominguito (Est. Puntilla Blanca)', 478)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3386, N'Villa Domínico', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3387, N'Villa Don Bosco (Est. Angaco Sud)', 478)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3388, N'Villa El Chacay', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3389, N'Villa El Chocón', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3390, N'Villa El Fachinal - Parque Norte - Guiñazú Norte', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3391, N'Villa El Palmar', 176)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3392, N'Villa El Salvador', 478)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3393, N'Villa El Salvador - Villa Sefair', 474)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3394, N'Villa El Tala', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3395, N'Villa El Tango', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3396, N'Villa Elisa', 194)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3397, N'Villa Eloísa', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3398, N'Villa Elvira', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3399, N'Villa Escolar', 300)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3400, N'Villa España', 27)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3401, N'Villa Esperanza', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3402, N'Villa Espil', 120)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3403, N'Villa Fiad - Ingenio Leales', 509)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3404, N'Villa Figueroa', 315)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3405, N'Villa Fiorito', 121)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3406, N'Villa Flor Serrana', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3407, N'Villa Fontana', 240)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3408, N'Villa Fontana', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3409, N'Villa Francia  (Est. Coronel Granada)', 122)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3410, N'Villa Futalaufquen', 192)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3411, N'Villa General Antonio J.  De Sucre', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3412, N'Villa General Arias  (Est. Kilómetro 638)', 123)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3413, N'Villa General Belgrano', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3414, N'Villa General Eugenio Necochea', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3415, N'Villa General Fournier  (Est. 9 de Julio Sud)', 88)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3416, N'Villa General Güemes', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3417, N'Villa General Jose Tomas Guido', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3418, N'Villa General Juan G. Las Heras', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3419, N'Villa General Manuel Belgrano', 302)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3420, N'Villa General Mitre (Est. Pinto)', 332)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3421, N'Villa General Roca', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3422, N'Villa General San Martín - Campo Afuera', 482)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3423, N'Villa General Savio  (Est. Sánchez)', 124)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3424, N'Villa Gesell', 83)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3425, N'Villa Giardino', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3426, N'Villa Giménez', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3427, N'Villa Gobernador Gálvez', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3428, N'Villa Gobernador Luis F. Etchevehere', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3429, N'Villa Gobernador Udaondo', 62)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3430, N'Villa Godoy Cruz', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3431, N'Villa Granaderos De San Martín', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3432, N'Villa Gregoria Matorras', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3433, N'Villa Grisolía  (Est. Achupallas)', 102)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3434, N'Villa Guillermina', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3435, N'Villa Gutiérrez', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3436, N'Villa Huidobro', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3437, N'Villa Ibáñez', 483)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3438, N'Villa Independencia', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3439, N'Villa Iris', 19)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3440, N'Villa José León Suarez', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3441, N'Villa Josefina', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3442, N'Villa Juan Martín De Pueyrredon', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3443, N'Villa Kilómetro 213', 298)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3444, N'Villa La Angostura', 428)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3445, N'Villa La Arcadia', 113)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3446, N'Villa La Bolsa', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3447, N'Villa La Florida', 44)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3448, N'Villa La Punta', 333)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3449, N'Villa La Rivera', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3450, N'Villa La Rivera (Oliveros)', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3451, N'Villa La Rivera (Pueblo Andino)', 311)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3452, N'Villa La Serranía', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3453, N'Villa La Viña', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3454, N'Villa Lago Azul', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3455, N'Villa Laguna La Brava', 110)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3456, N'Villa Larca', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3457, N'Villa Las Flores', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3458, N'Villa Las Pirquitas', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3459, N'Villa Laura (Est. Constituyentes)', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3460, N'Villa Lía', 40)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3461, N'Villa Libertad', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3462, N'Villa Libertad (Municipio Caá Yarí)', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3463, N'Villa Libertad (Municipio Leandro N. Alem)', 411)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3464, N'Villa Libertador San Martín', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3465, N'Villa Llanquín', 432)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3466, N'Villa Llao Llao', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3467, N'Villa Los Álamos', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3468, N'Villa Los Aromos', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3469, N'Villa Los Coihues', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3470, N'Villa Los Llanos - Juárez Celman', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3471, N'Villa Los Patos', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3472, N'Villa Luzuriaga', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3473, N'Villa Lynch', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3474, N'Villa Lynch Pueyrredón', 99)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3475, N'Villa Mailín', 325)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3476, N'Villa Maipu', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3477, N'Villa Malvinas Argentinas', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3478, N'Villa Mantero', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3479, N'Villa Manuel Pomar', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3480, N'Villa Manzano', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3481, N'Villa María', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3482, N'Villa María', 102)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3483, N'Villa Mariano Moreno - El Colmenar', 345)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3484, N'Villa Marqués Alejandro  María De Aguado', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3485, N'Villa Martelli', 45)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3486, N'Villa Mazán', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3487, N'Villa Media Agua', 484)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3488, N'Villa Mercedes', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3489, N'Villa Mercedes', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3490, N'Villa Minetti', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3491, N'Villa Mirasol', 359)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3492, N'Villa Moll  (Est. Moll)', 63)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3493, N'Villa Mugueta', 306)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3494, N'Villa Nueva', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3495, N'Villa Nueva', 317)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3496, N'Villa Ocampo', 502)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3497, N'Villa Oeste', 203)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3498, N'Villa Ojo de Agua', 314)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3499, N'Villa Olivari', 257)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3500, N'Villa Ortiz  (Est. Coronel Mom)', 102)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3501, N'Villa Padre Monti', 341)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3502, N'Villa Paranacito', 293)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3503, N'Villa Parodi', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3504, N'Villa Parque Cecir', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3505, N'Villa Parque Girado', 82)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3506, N'Villa Parque Pres Figueroa Alcorta', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3507, N'Villa Parque San Lorenzo', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3508, N'Villa Parque Santa Ana', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3509, N'Villa Parque Siquimán', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3510, N'Villa Pehuenia', 429)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3511, N'Villa Quilino', 200)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3512, N'Villa Quillinzo', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3513, N'Villa Quinteros', 512)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3514, N'Villa Raffo', 89)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3515, N'Villa Ramallo', 124)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3516, N'Villa Reducción', 250)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3517, N'Villa Regina', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3518, N'Villa Reynolds', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3519, N'Villa Río Bermejito', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3520, N'Villa Río Hondo', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3521, N'Villa Río Icho Cruz', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3522, N'Villa Roch', 125)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3523, N'Villa Rodríguez  (Est. Barrow)', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3524, N'Villa Rossi', 245)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3525, N'Villa Roth  (Est. Ingeniero Balbín)', 122)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3526, N'Villa Roulet', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3527, N'Villa Ruiz', 120)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3528, N'Villa Rumipal', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3529, N'Villa Saboya', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3530, N'Villa Salavina', 312)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3531, N'Villa Salles', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3532, N'Villa San Agustín', 468)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3533, N'Villa San Andrés', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3534, N'Villa San Esteban', 195)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3535, N'Villa San Isidro', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3536, N'Villa San Isidro - José de la Quintana', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3537, N'Villa San José', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3538, N'Villa San José', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3539, N'Villa San José', 119)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3540, N'Villa San José de Vinchina', 376)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3541, N'Villa San Justo', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3542, N'Villa San Lorenzo', 443)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3543, N'Villa San Luis', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3544, N'Villa San Marcial (Est. Gobernador Urquiza)', 288)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3545, N'Villa San Martín', 478)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3546, N'Villa San Martín (Est. Loreto)', 335)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3547, N'Villa San Miguel', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3548, N'Villa Sanagasta', 377)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3549, N'Villa Santa Cruz del Lago', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3550, N'Villa Santa Eugenia', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3551, N'Villa Santa Rosa', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3552, N'Villa Santa Rosa', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3553, N'Villa Santos Tesei', 60)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3554, N'Villa Saralegui', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3555, N'Villa Sarmiento', 244)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3556, N'Villa Sarmiento', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3557, N'Villa Sarmiento', 127)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3558, N'Villa Sauze', 91)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3559, N'Villa Serrana La Gruta', 117)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3560, N'Villa Sierras de Oro', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3561, N'Villa Silípica', 326)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3562, N'Villa Teresa', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3563, N'Villa Traful', 428)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3564, N'Villa Trinidad', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3565, N'Villa Trinidad', 295)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3566, N'Villa Tulumaya', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3567, N'Villa Tulumba', 246)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3568, N'Villa Turística del Embalse', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3569, N'Villa Unión', 336)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3570, N'Villa Unión', 369)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3571, N'VILLA URQUIZA', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3572, N'Villa Valeria', 237)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3573, N'Villa Vatteone', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3574, N'Villa Ventana', 117)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3575, N'Villa Vil', 143)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3576, N'Villa Yacanto', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3577, N'Villa Yapeyú', 128)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3578, N'Villada', 307)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3579, N'Villaguay', 282)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3580, N'Villalonga', 114)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3581, N'Villanueva  (Ap. Río Salado)', 14)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3582, N'Villars', 69)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3583, N'Vilmer', 321)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3584, N'Viña', 9)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3585, N'Vinalito', 29)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3586, N'Vinará', 334)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3587, N'Virginia', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3588, N'Virrey Del Pino', 129)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3589, N'Virreyes', 130)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3590, N'Vista Alegre Norte', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3591, N'Vista Alegre Sur', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3592, N'Vista Flores', 394)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3593, N'Vivoratá', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3594, N'Volcán', 216)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3595, N'Vuelta de la Barranca', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3596, N'Wanda', 413)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3597, N'Warnes', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3598, N'Washington', 247)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3599, N'Weisburd', 330)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3600, N'Wenceslao Escalante', 201)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3601, N'Wheelwright', 308)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3602, N'Wichi', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3603, N'Wilde', 36)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3604, N'Wildermuth (Est. Granadero B. Bustos)', 310)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3605, N'William C. Morris', 60)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3606, N'Winifreda', 231)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3607, N'XX de Setiembre', 277)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3608, N'Yacimientos Río Turbio', 494)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3609, N'Yacuy', 465)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3610, N'Yahapé', 254)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3611, N'Yala', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3612, N'Yala Laubat', 183)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3613, N'Yaminué', 433)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3614, N'Yanda', 337)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3615, N'Yapes', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3616, N'Yapeyú', 256)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3617, N'Yavi', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3618, N'Yavi Chico', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3619, N'Yerba Buena - Marcos Paz', 514)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3620, N'Yocsina', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3621, N'Yoscaba', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3622, N'Yuchán', 338)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3623, N'Yuto', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3624, N'Yutuyaco', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3625, N'Zanjitas', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3626, N'Zapala', 421)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3627, N'Zaparinqui', 177)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3628, N'Zárate', 80)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3629, N'Zavalía', 81)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3630, N'Zavalla', 501)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3631, N'Zenón Pereyra', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3632, N'Zenón Videla Dorna', 4)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3633, N'Zona Aeropuerto Internacional Ezeiza', 3)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3637, N'Del Viso', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3638, N'Fátima', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3639, N'La Lonja', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3640, N'Los Cachorros', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3641, N'Manzanares', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3642, N'Manzone', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3643, N'Maquinista F. Savio (oeste)', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3644, N'Pilar', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3645, N'Presidente Derqui', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3646, N'Santa Teresa', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3647, N'Tortuguitas', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3648, N'Villa Astolfi', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3649, N'Villa Rosa', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3650, N'Zelaya', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3651, N'Belen de Escobar', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3652, N'El cazador', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3653, N'Garín', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3654, N'Ingeniero Maschwitz', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3655, N'Loma Verde', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3656, N'Maquinista F. Savio (este)', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3657, N'Matheu', 132)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3658, N'General Rodríguez', 15)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3659, N'Alejandro Korn', 133)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3660, N'San Vicente', 133)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3661, N'Barrio Lisandro de la Torre', 134)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3662, N'Barrio Santa Marta', 134)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3663, N'Marcos Paz', 134)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3664, N'Barrio Belgrano-Máximo Paz', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3665, N'Máximo Paz', 135)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3666, N'Barrio El Peligro', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3668, N'Guernica', 136)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3669, N'Base Carlini', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3670, N'Base San Martin', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3671, N'Destacamento Camara', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3672, N'Destacamento Decepcion', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3673, N'Destacamento Melchior', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3674, N'Destacamento Petrel', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3675, N'Base Orcadas', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3676, N'Base Marambio', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3677, N'Base Esperanza', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3678, N'Base Belgrano Ii', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3679, N'Base Brown', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3680, N'Base Matienzo', 517)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3681, N'El Ramblón', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3682, N'Crucesitas Séptima Sección', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3683, N'Esquina Negra', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3684, N'La Providencia', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3685, N'Poblet', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3686, N'Abasto', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3687, N'Angel Etcheverry', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3688, N'Arana', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3689, N'Arturo Segui', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3690, N'Barrio El Carmen Oeste', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3691, N'Barrio Gambier', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3692, N'Barrio Las Malvinas', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3693, N'Barrio Las Quintas', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3694, N'City Bell', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3695, N'El Retiro', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3696, N'Joaquin Gorina', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3697, N'Jose Hernandez', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3698, N'Jose Melchor Romero', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3699, N'La Cumbre', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3700, N'Lisandro Olmos', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3701, N'Los Hornos', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3702, N'Manuel B Gonnet', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3703, N'Ringuelet', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3704, N'Rufino De Elizalde', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3705, N'Tolosa', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3706, N'Transradio', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3707, N'Villa Elisa', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3708, N'Villa Elvira', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3709, N'Villa Garibaldi', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3710, N'Villa Montoro', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3711, N'Villa Parque Sicardi', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3712, N'Agua de Castilla', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3713, N'Aguada San Roque', 425)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3714, N'Aldea Grapschental', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3715, N'Aldea San Juan', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3716, N'Alicia Baja', 400)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3717, N'Aparzo', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3718, N'Arelauquen', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3719, N'Asamblea', 20)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3720, N'Bario Ita', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3721, N'Barrio Carrasco', 379)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3722, N'Barrio Cuatro Bocas', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3723, N'Barrio del Lago', 398)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3724, N'Barrio Destacamento', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3725, N'Barrio El Mirador', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3726, N'Barrio Emergente', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3727, N'Barrio Escuela 461', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3728, N'Barrio Escuela 633', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3729, N'Barrio Esperanza', 437)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3730, N'Barrio Fátima', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3731, N'Barrio Finca La Maroma', 451)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3732, N'Barrio Guatambu', 405)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3733, N'Barrio Justo P. Castro IV', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3734, N'Barrio La Costa', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3735, N'Barrio La Estación', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3736, N'Barrio La Herradura', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3737, N'Barrio La Rotonda', 451)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3738, N'Barrio Lomas Altas', 82)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3739, N'Barrio Luisillo', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3740, N'Barrio Moño Azul', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3741, N'Barrio Municipal', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3742, N'Barrio Ntra. Sra. De Fátima', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3743, N'Barrio Nuevo Garupa', 402)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3744, N'Barrio Nuevo Río Ceballos', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3745, N'Barrio Pinar', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3746, N'Barrio Planta Compresora de Gas', 430)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3747, N'Barrio Ruca Luhé', 414)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3748, N'Barrio Rural', 397)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3749, N'Barrio Santa Lucia', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3750, N'Barrio Santa Teresita', 451)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3751, N'Barrio Tungoil', 403)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3752, N'Barrio Virgen del Rosario', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3753, N'Benitez', 55)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3754, N'Caburei', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3755, N'Cachirulo', 357)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3756, N'Campos de Roca', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3757, N'Campos del Virrey', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3759, N'Capioviciño', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3760, N'Casa Colorada', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3761, N'Casa de Piedra', 223)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3762, N'Causana', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3763, N'Centinela del Mar', 87)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3764, N'Cerro de la Gloria', 26)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3765, N'Chacras del Río Luján', 22)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3766, N'Cianzo', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3767, N'Club de Campo Las Malvinas', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3768, N'Club de Campo Los Puentes', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3770, N'Colonia Crespo', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3771, N'Costa del Chubut', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3772, N'Country Los Medanos', 92)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3773, N'Coyaguaima', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3774, N'Dr. Manuel Belgrano', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3775, N'El Angosto', 221)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3776, N'El Arenal', 322)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3777, N'El Durazno', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3778, N'El Empalme', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3779, N'El Espino', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3780, N'El Potrerillo', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3781, N'El Quebracho', 294)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3782, N'El Ramblón', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3783, N'El Ramblón', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3784, N'EL SAUCE', 423)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3785, N'El Zampal', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3786, N'Energía', 66)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3787, N'Estación Escriña', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3788, N'Estación Yuquerí', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3789, N'Estancia Grande', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3790, N'Fofo Cahuel', 186)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3791, N'Fortín Soledad', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3792, N'General Alvear', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3793, N'Goldney', 56)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3794, N'Guadalcazar', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3795, N'Gunther', 122)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3796, N'Hito 1', 456)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3797, N'Ingeniero Moneta', 108)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3798, N'Inocencio Sosa', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3799, N'Jama', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3800, N'Jorge Born', 56)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3801, N'José de la Quintana', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3802, N'Juventud Unida', 437)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3803, N'Kilómetro 17', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3804, N'La Juanita', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3805, N'La Lucila', 205)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3806, N'La Merced del Encón', 460)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3807, N'La Morada', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3808, N'La Punta', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3809, N'La Redonda', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3810, N'La Rinconada', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3811, N'Laguna Gallo', 301)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3812, N'Laguna Vitel', 82)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3814, N'Las Chacras', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3815, N'Las Corzuelas', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3816, N'Las Encadenadas', 10)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3817, N'Las Jaulas', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3818, N'Las Piedritas', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3819, N'Loma Blanca', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3820, N'Loma Bola', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3821, N'Los Alisos', 215)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3822, N'Los Chañaritos', 236)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3823, N'Los Chañaritos', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3824, N'Los Overos', 492)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3825, N'Loteo San Vicente', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3826, N'Maíz Negro', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3827, N'Mallín Ahogado', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3828, N'Milenica', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3829, N'Moquehue', 429)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3830, N'Nación Ranquel', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3831, N'Nuestra Señora del Rosario', 215)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3832, N'Nueva Delicia', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3833, N'Olacapato', 210)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3834, N'Orosmayo', 219)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3835, N'Pago Chico', 123)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3836, N'Palca de Aparzo', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3837, N'Palca de Varas', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3838, N'Panambi Kilómetro 15', 404)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3839, N'Parada Labougle', 266)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3840, N'Paraje La Agraria', 6)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3841, N'Paraje La Ruta', 112)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3842, N'Pastor Britos', 284)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3843, N'Pichi Mahuida', 437)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3844, N'Piñalito Norte', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3845, N'Posada de los Lagos', 54)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3846, N'Posadas (Extensión)', 402)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3847, N'Pueblo Libertador', 259)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3848, N'Pueblo Nuevo', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3849, N'Puente Cero', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3850, N'Puerta de Colorados', 216)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3851, N'Puerto Andresito', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3852, N'Puerto Deseado', 407)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3853, N'Quebracho Ladeado', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3854, N'Quebraleña', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3855, N'Quera', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3856, N'Quili Malal', 418)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3857, N'Reserva Area Protegida El Doradillo', 191)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3858, N'Rodero', 212)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3859, N'Saco Viejo', 439)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3860, N'Salto Andersen', 437)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3861, N'San Bernardo', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3862, N'San Esteban', 30)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3863, N'San Ramón', 279)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3864, N'Santa Ana de la Puna', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3865, N'Santiago de Liniers', 412)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3866, N'Santo Tomás', 93)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3867, N'Sol de Mayo', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3868, N'Tambillos', 211)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3869, N'Tatacua', 273)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3870, N'Termas de Santa Teresita', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3871, N'Triunvirato', 34)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3872, N'Trongé', 2)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3873, N'Vaca Perdida', 299)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3874, N'Villa Cooperativa', 413)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3875, N'Villa del Nahueve', 422)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3876, N'Villa Lago Meliquina', 424)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3877, N'Villa Manuel Pomar', 515)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3878, N'Villa Margarita', 74)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3879, N'Villa Mascardi', 438)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3880, N'Villa Urrutia', 406)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3881, N'Yatayti Calle', 261)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3882, N'Ingeniero White', 21)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3883, N'Aguas Verdes', 85)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3884, N'Punta Mogotes', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3885, N'Playa Dorada', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3886, N'Manuel Alberti', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3887, N'Carilo', 101)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3888, N'Ostende', 101)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3889, N'Valeria Del Mar', 101)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3890, N'Nordelta', 39)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3891, N'Buena Vista', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3892, N'La Tercena', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3893, N'Santa Rosa', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3894, N'Sumalao', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3895, N'Barrio Prospero Palazzo', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3896, N'KM. 8 - Don Bosco', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3897, N'KM. 3 - General Mosconi', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3898, N'KM. 5 - Presidente Ortiz', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3899, N'Mi Valle', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3900, N'El Brillante', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3901, N'VILLA ZORRAQUIN', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3902, N'ALPASINCHE', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3903, N'LAS TORTUGAS', 387)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3904, N'SAN FRANCISCO DEL MONTE', 387)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3905, N'General Belgrano', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3906, N'BERMEJO', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3907, N'BUENA NUEVA', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3908, N'Colonia Segovia', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3909, N'DORREGO', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3910, N'EL SAUCE', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3911, N'JESUS NAZARENO', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3912, N'KILOMETRO 11 (GUAYMALLEN)', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3913, N'Las Cañas', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3914, N'PEDRO MOLINA', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3915, N'RODEO DE LA CRUZ', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3916, N'SAN FRANCISCO DEL MONTE', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3917, N'Villa Nueva', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3918, N'ALTO VERDE', 390)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3919, N'EL CHALLAO', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3920, N'EL PLUMERILLO', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3921, N'EL RESGUARDO', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3922, N'EL ZAPALLAR', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3923, N'CARRODILLA', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3924, N'CHACRAS DE CORIA', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3925, N'MAYOR DRUMMOND', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3926, N'VISTALBA', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3927, N'COQUIMBITO', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3928, N'GENERAL GUTIERREZ', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3929, N'LUZURIAGA', 393)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3930, N'PALMIRA', 378)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3931, N'Cruz de Piedra', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3932, N'RINCON NORTE', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3933, N'EX INGENIO SAN JOSE', 514)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3934, N'Strobel', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3935, N'Costa Grande', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3936, N'Colonia Merou', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3937, N'Campo Garay', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3938, N'Independencia', 506)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3939, N'Balde De Azcurra', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3940, N'Balde De Los Torres', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3941, N'Balde Del Carmen', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3942, N'Balde Retamo', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3943, N'Baldecito De La Pampa', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3944, N'Carpinteria', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3945, N'El Calden', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3946, N'El Injerto', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3947, N'El Rincon', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3948, N'El Vinagrillo', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3949, N'EL ZAPALLAR', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3950, N'La Aguada', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3951, N'La Avenencia', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3952, N'La Botija', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3953, N'La Brea', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3954, N'La Represita', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3955, N'La Salvadora', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3956, N'Las Chacras', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3957, N'Las Chimbas', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3958, N'Las Lagunitas', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3959, N'Lomas Blancas', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3960, N'Los Quemados', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3961, N'Pampa Grande', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3962, N'Pozo del Molle', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3963, N'Rodeo De Cadenas', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3964, N'San Ignacio', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3965, N'San Miguel', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3966, N'San Roque', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3967, N'Santa Ana', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3968, N'Santa Rosa De Catantal', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3969, N'Santa Teresa', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3970, N'Santo Domingo', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3971, N'Talita', 487)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3972, N'Arbol Solo', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3973, N'Bella Estancia', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3974, N'Buen Orden', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3975, N'El Barrial', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3976, N'El Milagro', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3977, N'El Recodo', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3978, N'Estancia De Amieva', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3979, N'Hualtaran', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3980, N'Las Lagunitas', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3981, N'Los Molles', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3982, N'Los Ramblones', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3983, N'Naranjo Esquino', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3984, N'Pozo Cavado', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3985, N'Pozo Del Tala', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3986, N'Represa Del Carmen', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3987, N'San Antonio', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3988, N'San Pedro', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3989, N'Santa Rosa Del Gigante', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3990, N'Suyuque Nuevo', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3991, N'Toro Negro', 489)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3992, N'Balcarce', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3993, N'Colonia Zubelzu', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3994, N'El Algarrobal', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3995, N'El Churrasco', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3996, N'El Recuerdo', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3997, N'EL SAUCE', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3998, N'El Sifon', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (3999, N'El Tala', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4000, N'La Celestina', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4001, N'Las Rosas', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4002, N'Pozo Cavado', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4003, N'Punta De La Loma', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4004, N'San Felipe', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4005, N'San Miguel', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4006, N'Santa Martina', 490)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4007, N'Balde De La Isla', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4008, N'Cerros Largos', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4009, N'Cienaga De Intihuasi', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4010, N'El Arenal', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4011, N'El Baldecito', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4012, N'El Durazno', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4013, N'Eleodoro Lobos', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4014, N'Intihuasi', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4015, N'La Petra', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4016, N'La Totora', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4017, N'Las Barranquitas', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4018, N'Las Pircas', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4019, N'Loma Alta', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4020, N'Marmol Verde', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4021, N'Pampa Del Tamboreo', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4022, N'Paso Del Rey', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4023, N'Valle De Pancanta', 485)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4024, N'5Ta Brigada', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4025, N'Caldenadas', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4026, N'Colonia Don Antonio', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4027, N'Coronel Alzogaray', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4028, N'Country Club Los Caldenes', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4029, N'Dique Vulpiani', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4030, N'La Angelina', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4031, N'La Esquina', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4032, N'La Ribera', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4033, N'Las Isletas', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4034, N'Liborio Luna', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4035, N'Rio Quinto', 493)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4036, N'Bajo De Veliz', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4037, N'Balde De Escudero', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4038, N'Cerrito Blanco', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4039, N'El Duraznito', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4040, N'La Chilca', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4041, N'La Lomita', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4042, N'Las Palomas', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4043, N'Los Lobos', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4044, N'Ojo Del Rio', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4045, N'Santa Ana', 488)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4046, N'Boca Del Tigre', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4047, N'Cerro Colorado', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4048, N'Charlone', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4049, N'Daniel Donovan', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4050, N'El Charabon', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4051, N'El Chorrillo', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4052, N'Estancia Grande', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4053, N'Juan W. Gez', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4054, N'Las Barrancas', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4055, N'Las Chacras', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4056, N'Los Algarrobos Blancos', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4057, N'Pozo Del Carril', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4058, N'San Roque', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4059, N'Santa Rosa', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4060, N'Varela', 491)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4061, N'Barranca Alta', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4062, N'Cabeza De Novillo', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4063, N'Casa De Los Tigres', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4064, N'El Estanquito', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4065, N'El Paraguay', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4066, N'El Paraiso', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4067, N'El Puesto', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4068, N'La Cocha', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4069, N'La Ramada', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4070, N'La Totora', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4071, N'Los Comederos', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4072, N'Mesilla Del Cura', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4073, N'Planta De Sandia', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4074, N'Puerta Colorada', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4075, N'Rincon Del Carmen', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4076, N'San Fernando', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4077, N'San Isidro', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4078, N'San Vicente', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4079, N'Tala Verde', 486)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4080, N'Grunbein', 21)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4081, N'Villa Bordeau', 21)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4082, N'Villa Espora', 21)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4083, N'Barrio Banco Provincia', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4084, N'Barrio El Carmen (Este)', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4085, N'Barrio Universitario', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4086, N'Los Talas', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4087, N'Villa Arguello', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4088, N'Villa Dolores', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4089, N'Villa Independencia', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4090, N'Villa Nueva', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4091, N'Villa Porteña', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4092, N'Villa Progreso', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4093, N'Villa San Carlos', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4094, N'Villa Zula', 16)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4095, N'Barrio San Cayetano', 82)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4096, N'Dique Nº 1', 41)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4097, N'Isla Santiago (Oeste)', 41)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4098, N'Punta Lara', 41)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4099, N'Villa Catela', 41)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4100, N'El Remanso', 98)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4101, N'El Tropezon', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4102, N'Barrio Kennedy', 50)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4103, N'Camet', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4104, N'Estacion Camet', 86)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4105, N'Lucila Del Mar', 85)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4106, N'Country Club Las Praderas', 96)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4107, N'Atlantida', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4108, N'Camet Norte', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4109, N'Frente Mar', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4110, N'La Baliza', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4111, N'La Caleta', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4112, N'Santa Elena', 84)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4113, N'Villa Arrieta', 59)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4114, N'Roberto De Vicenzo', 131)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4115, N'Barrio America Unida', 136)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4116, N'Barrio Las Margaritas', 68)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4117, N'Campos Salles', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4118, N'Villa Campi', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4119, N'Villa Canto', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4120, N'Villa Riccio', 42)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4121, N'Dunamar', 97)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4122, N'Mar De Las Pampas', 83)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4123, N'Aconquija', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4124, N'Alto De Las Juntas', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4125, N'La Mesada', 141)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4126, N'Los Angeles Norte', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4127, N'Los Angeles Sur', 137)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4128, N'El Hueco', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4129, N'La Carrera', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4130, N'La Falda De San Antonio', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4131, N'San Antonio', 148)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4132, N'El Cerrito', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4133, N'La Puntilla', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4134, N'Lampacito', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4135, N'Medanitos', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4136, N'Palo Seco', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4137, N'San Jose Banda', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4138, N'San Jose Norte', 142)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4139, N'La Puntilla', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4140, N'La Ramadita', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4141, N'Pampa Blanca', 138)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4142, N'El Bañado', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4143, N'Polcos', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4144, N'Pozo Del Mistol', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4145, N'Villa Dolores', 151)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4146, N'Acceso Norte', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4147, N'Barrio 25 De Mayo', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4148, N'Barrio Caleta Cordova', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4149, N'Barrio Caleta Olivares', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4150, N'Barrio Castelli', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4151, N'Barrio Ciudadela', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4152, N'Barrio Gasoducto', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4153, N'Barrio Guemes', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4154, N'Barrio Laprida', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4155, N'Barrio Manantial Rosales', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4156, N'Barrio Militar - Aeropuerto Militar', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4157, N'Barrio Restinga Ali', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4158, N'Barrio Rodriguez Peña', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4159, N'Barrio Saavedra', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4160, N'Barrio Sarmiento', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4161, N'Barrio Villa S.U.P.E.', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4162, N'Km. 11 - Cuarteles', 182)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4163, N'Santa Monica', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4164, N'Villa Ciudad Parque Los Reartes', 202)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4165, N'La Floresta', 198)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4166, N'1 De Agosto', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4167, N'Almirante Brown', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4168, N'Ciudad De Los Niños', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4169, N'Dumesnil', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4170, N'El Pueblito', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4171, N'Villa Corazon De Maria', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4172, N'Villa Pastora', 197)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4173, N'San Roque Del Lago', 241)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4174, N'El Pueblito', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4175, N'El Valle', 199)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4176, N'Barrio Las Quintas', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4177, N'La Donosa', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4178, N'Tejas Tres', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4179, N'Tierra Alta', 251)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4180, N'El Colorado', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4181, N'Hocker', 287)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4182, N'Benito Legeren', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4183, N'Estancia Grande', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4184, N'Las Tejas', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4185, N'Villa Adela', 281)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4186, N'Estacion Puiggari', 292)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4187, N'Pueblo Moreno', 290)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4188, N'San Pablo De Reyes', 218)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4189, N'Fleming', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4190, N'Pila Pardo', 303)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4191, N'Pueblo Ledesma', 222)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4192, N'Rio Blanco', 305)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4193, N'La Toma', 215)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4194, N'Yacoraite', 217)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4195, N'San Jose', 304)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4196, N'Machigasta', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4197, N'San Antonio', 366)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4198, N'Anguinan', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4199, N'La Puntilla', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4200, N'Los Sarmientos', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4201, N'San Miguel', 372)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4202, N'Santa Clara', 369)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4203, N'Amuschina', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4204, N'Andolucas', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4205, N'Chaupihuasi', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4206, N'Cuipan', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4207, N'Las Talas', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4208, N'Los Robles', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4209, N'Salicas', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4210, N'San Blas', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4211, N'Shaqui', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4212, N'Suriyaco', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4213, N'Tuyubil', 371)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4214, N'Villa Sanagasta', 377)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4215, N'Gobernador Benegas', 387)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4216, N'Presidente Sarmiento', 387)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4217, N'Villa Hipodromo', 387)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4218, N'Villa Marini', 387)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4219, N'Capilla Del Rosario', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4220, N'San Jose', 384)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4221, N'El Algarrobal', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4222, N'El Borbollon', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4223, N'La Cieneguita', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4224, N'Panquehua', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4225, N'Sierras De Encalada', 382)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4226, N'Barrio La Esperanza', 380)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4227, N'Barrio Adina I Y Ii', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4228, N'El Carmelo', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4229, N'La Puntilla', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4230, N'Las Carditas', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4231, N'Los Manantiales', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4232, N'Piedras Blancas', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4233, N'Valle Del Sol', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4234, N'Villa El Refugio', 385)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4235, N'Cuadro Ortega', 389)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4236, N'Barrio Echeverria', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4237, N'Barrio Las Rosas', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4238, N'Barrio Primavera', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4239, N'Cuadro Nacional', 392)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4240, N'Villa Bastias', 395)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4241, N'Nucleo I', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4242, N'Nucleo Ii', 396)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4243, N'Covunco Centro', 421)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4244, N'Barrio El Treinta', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4245, N'Barrio Goretti', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4246, N'Barrio Puente De Madera', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4247, N'Barrio Tres Luces', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4248, N'Tres Luces', 431)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4249, N'Barrio El Congreso', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4250, N'Barrio Las Tunas', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4251, N'Barrio Los Olmos', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4252, N'Barrio Los Pinares', 461)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4253, N'La Chimbera', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4254, N'Villa Borjas', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4255, N'Campo Afuera', 473)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4256, N'La Cañada', 482)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4257, N'Villa Ampacama', 482)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4258, N'Villa General San Martin', 482)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4259, N'Villa El Salvador', 474)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4260, N'Villa Sefair (Talacasto)', 474)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4261, N'Barreal', 469)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4262, N'Villa Pituil', 469)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4263, N'Las Talas', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4264, N'Los Medanos', 471)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4265, N'El Mogote', 472)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4266, N'Villa Paula Albarracin', 472)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4267, N'El Fical', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4268, N'El Fiscal', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4269, N'La Falda', 475)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4270, N'La Rinconada', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4271, N'Villa Aberastain', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4272, N'Villa Barboza', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4273, N'Villa Nacusi', 470)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4274, N'El Medanito', 476)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4275, N'Villa Krause', 476)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4276, N'Alto de Sierra', 480)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4277, N'Colonia Gutierrez', 480)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4278, N'Villa Tacu', 481)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4279, N'Estacion Presidente Roca', 507)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4280, N'Villa Adelina', 505)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4281, N'El Corte', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4282, N'El Paraiso', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4283, N'Ex Ingenio Esperanza', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4284, N'Ex Ingenio Los Ralos', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4285, N'Ex Ingenio Lujan', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4286, N'Ingenio La Florida', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4287, N'Lastenia', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4288, N'Lastenia', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4289, N'Los Gutierrez', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4290, N'Villa Recaste', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4291, N'Villa Tercera', 343)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4292, N'Ex Ingenio Nueva Baviera', 346)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4293, N'Barrio Araujo', 344)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4294, N'Ingenio Santa Barbara', 508)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (4295, N'Country Jockey Club', 514)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5000, N'la rotonda', 126)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5001, N'ruta del sol', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5002, N'colonia la plata', 61)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5004, N'CONSTITUCION', 9001)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5005, N'MONSERRAT', 9001)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5006, N'PUERTO MADERO', 9001)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5007, N'RETIRO', 9001)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5008, N'SAN NICOLAS', 9001)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5009, N'SAN TELMO', 9001)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5010, N'RECOLETA', 9002)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5011, N'BALVANERA', 9003)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5012, N'SAN CRISTOBAL', 9003)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5013, N'BARRACAS', 9004)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5014, N'BOCA', 9004)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5015, N'NUEVA POMPEYA', 9004)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5016, N'PARQUE PATRICIOS', 9004)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5017, N'ALMAGRO', 9005)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5018, N'BOEDO', 9005)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5019, N'CABALLITO', 9006)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5020, N'FLORES', 9007)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5021, N'PARQUE CHACABUCO', 9007)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5022, N'VILLA LUGANO', 9008)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5023, N'VILLA RIACHUELO', 9008)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5024, N'VILLA SOLDATI', 9008)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5025, N'LINIERS', 9009)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5026, N'MATADEROS', 9009)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5027, N'PARQUE AVELLANEDA', 9009)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5028, N'FLORESTA', 9010)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5029, N'MONTE CASTRO', 9010)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5030, N'VELEZ SARSFIELD', 9010)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5031, N'VERSALLES', 9010)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5032, N'VILLA LURO', 9010)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5033, N'VILLA REAL', 9010)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5034, N'VILLA DEL PARQUE', 9011)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5035, N'VILLA DEVOTO', 9011)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5036, N'VILLA GENERAL MITRE', 9011)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5037, N'VILLA SANTA RITA', 9011)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5038, N'COGHLAN', 9012)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5039, N'SAAVEDRA', 9012)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5040, N'VILLA PUEYRREDON', 9012)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5041, N'VILLA URQUIZA', 9012)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5042, N'BELGRANO', 9013)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5043, N'COLEGIALES', 9013)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5044, N'NUÑEZ', 9013)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5045, N'PALERMO', 9014)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5046, N'AGRONOMIA', 9015)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5047, N'CHACARITA', 9015)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5048, N'PARQUE CHAS', 9015)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5049, N'PATERNAL', 9015)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5050, N'VILLA CRESPO', 9015)
GO
INSERT [dbo].[Table_ER_Localidad] ([ID_Localidad], [Nombre], [Partido]) VALUES (5051, N'VILLA ORTUZAR', 9015)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (2, N'Trenque Lauquen', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (3, N'Esteban Echeverría', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (4, N'Monte', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (5, N'Adolfo Gonzales Chaves', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (6, N'Junín', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (7, N'Rivadavia', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (8, N'Lobos', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9, N'Arrecifes', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (10, N'Saavedra', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (11, N'Magdalena', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (12, N'San Cayetano', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (13, N'Baradero', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (14, N'General Paz', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (15, N'General Rodríguez', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (16, N'Berisso', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (17, N'Saladillo', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (18, N'Pellegrini', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (19, N'Puán', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (20, N'Bragado', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (21, N'Bahía Blanca', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (22, N'Campana', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (23, N'Roque Pérez', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (24, N'Carmen de Areco', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (25, N'Guaminí', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (26, N'Castelli', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (27, N'Berazategui', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (28, N'Chacabuco', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (29, N'SANTA BARBARA', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (30, N'Pehuajó', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (31, N'Azul', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (32, N'Carlos Tejedor', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (33, N'Las Flores', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (34, N'Lincoln', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (35, N'Coronel Pringles', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (36, N'Avellaneda', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (37, N'José C. Paz', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (38, N'Dolores', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (39, N'Tigre', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (40, N'San Antonio de Areco', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (41, N'Ensenada', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (42, N'San Nicolás', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (43, N'25 de Mayo', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (44, N'Quilmes', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (45, N'Vicente López', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (46, N'Tandil', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (47, N'General Alvear', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (48, N'General Belgrano', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (50, N'General Juan Madariaga', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (51, N'General La Madrid', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (52, N'General Lavalle', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (53, N'Suipacha', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (54, N'Brandsen', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (55, N'Chivilcoy', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (56, N'Mercedes', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (57, N'Malvinas Argentinas', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (58, N'Hipólito Yrigoyen', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (59, N'Olavarría', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (60, N'Hurlingham', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (61, N'La Plata', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (62, N'Ituzaingó', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (63, N'Navarro', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (64, N'Ezeiza', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (65, N'Leandro N. Alem', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (66, N'Necochea', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (67, N'General Arenales', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (68, N'Rojas', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (69, N'General Las Heras', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (70, N'Ayacucho', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (71, N'Salto', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (72, N'Capitán Sarmiento', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (73, N'Daireaux', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (74, N'Adolfo Alsina', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (75, N'Moreno', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (76, N'General Guido', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (77, N'Lanús', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (78, N'Maipú', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (79, N'Punta Indio', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (80, N'Zárate', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (81, N'General Viamonte', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (82, N'Chascomús', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (83, N'Villa Gesell', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (84, N'Mar Chiquita', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (85, N'La Costa', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (86, N'General Pueyrredón', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (87, N'General Alvarado', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (88, N'9 de Julio', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (89, N'Tres De Febrero', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (90, N'San Isidro', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (91, N'General Villegas', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (92, N'Villarino', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (93, N'Carlos Casares', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (94, N'Monte Hermoso', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (95, N'San Miguel', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (96, N'Luján', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (97, N'Tres Arroyos', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (98, N'Exaltación de la Cruz', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (99, N'Bolívar', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (100, N'Pila', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (101, N'Pinamar', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (102, N'Alberti', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (103, N'Merlo', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (104, N'Florentino Ameghino', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (105, N'Laprida', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (106, N'Almirante Brown', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (107, N'Rauch', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (108, N'San Pedro', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (109, N'Salliqueló', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (110, N'Balcarce', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (111, N'Lobería', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (112, N'Coronel Dorrego', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (113, N'Coronel Suárez', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (114, N'Patagones', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (115, N'Benito Juárez', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (116, N'Tres Lomas', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (117, N'Tornquist', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (118, N'Tapalqué', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (119, N'Pergamino', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (120, N'San Andrés de Giles', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (121, N'Lomas De Zamora', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (122, N'General Pinto', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (123, N'Coronel de Marina L. Rosales', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (124, N'Ramallo', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (125, N'Tordillo', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (126, N'Florencio Varela', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (127, N'Morón', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (128, N'General San Martín', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (129, N'La Matanza', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (130, N'San Fernando', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (131, N'Pilar', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (132, N'Escobar', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (133, N'San Vicente', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (134, N'Marcos Paz', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (135, N'Cañuelas', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (136, N'Presidente Perón', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (137, N'Capayán', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (138, N'Tinogasta', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (139, N'Antofagasta de la Sierra', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (140, N'Pomán', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (141, N'Andalgalá', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (142, N'Santa María', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (143, N'Belén', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (144, N'Paclín', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (145, N'Ancasti', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (146, N'Ambato', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (147, N'Santa Rosa', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (148, N'Fray Mamerto Esquiú', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (149, N'La Paz', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (150, N'Capital', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (151, N'Valle Viejo', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (152, N'El Alto', 21)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (153, N'San Fernando', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (154, N'Independencia', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (155, N'Tapenagá', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (156, N'Chacabuco', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (157, N'Libertador General San Martín', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (158, N'Sargento Cabral', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (159, N'General Belgrano', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (160, N'Mayor Luis J. Fontana', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (161, N'2 de Abril', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (162, N'O Higgins', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (163, N'Libertad', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (164, N'General Donovan', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (165, N'9 de Julio', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (166, N'1º de Mayo', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (167, N'12 de Octubre', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (168, N'25 de Mayo', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (169, N'Presidencia de la Plaza', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (170, N'Comandante Fernández', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (171, N'Bermejo', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (172, N'Almirante Brown', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (173, N'Maipú', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (174, N'Fray Justo Santa María de Oro', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (175, N'San Lorenzo', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (176, N'Quitilipi', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (177, N'General Güemes', 14)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (178, N'Gaiman', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (179, N'Río Senguer', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (180, N'Sarmiento', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (181, N'Florentino Ameghino', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (182, N'Escalante', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (183, N'Gastre', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (184, N'Telsen', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (185, N'Tehuelches', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (186, N'Cushamen', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (187, N'Mártires', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (188, N'Paso de Indios', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (189, N'Languiñeo', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (190, N'Rawson', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (191, N'Biedma', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (192, N'Futaleufú', 12)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (194, N'Marcos Juárez', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (195, N'San Justo', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (196, N'Río Segundo', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (197, N'Colón', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (198, N'Capital', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (199, N'San Javier', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (200, N'Ischilín', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (201, N'Unión', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (202, N'Calamuchita', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (203, N'General San Martín', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (204, N'San Justo', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (205, N'San Cristóbal', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (206, N'San Jerónimo', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (207, N'Garay', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (208, N'Vera', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (209, N'Las Colonias', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (210, N'Susques', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (211, N'Cochinoca', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (212, N'Humahuaca', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (214, N'San Pedro', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (215, N'San Antonio', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (216, N'Tumbaya', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (217, N'Tilcara', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (218, N'Doctor Manuel Belgrano', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (219, N'Rinconada', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (220, N'Valle Grande', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (221, N'Santa Catalina', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (222, N'Ledesma', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (223, N'Puelén', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (224, N'Maracó', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (225, N'Chical Co', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (226, N'Guatraché', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (227, N'Capital', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (228, N'Caleu Caleu', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (229, N'Chapaleufú', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (230, N'Lihuel Calel', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (231, N'Conhelo', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (232, N'Realicó', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (233, N'Utracán', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (234, N'Hucal', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (235, N'Catriló', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (236, N'Cruz del Eje', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (237, N'General Roca', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (238, N'Tercero Arriba', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (239, N'Río Seco', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (240, N'Río Primero', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (241, N'Punilla', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (242, N'Minas', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (243, N'Sobremonte', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (244, N'San Alberto', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (245, N'Presidente Roque Sáenz Peña', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (246, N'Tulumba', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (247, N'Río Cuarto', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (248, N'Totoral', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (249, N'Pocho', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (250, N'Juárez Celman', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (251, N'Santa María', 3)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (252, N'General Alvear', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (253, N'Bella Vista', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (254, N'Berón de Astrada', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (255, N'Curuzú Cuatiá', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (256, N'San Martín', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (257, N'Ituzaingó', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (258, N'Empedrado', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (259, N'Esquina', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (260, N'Goya', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (261, N'Lavalle', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (262, N'General Paz', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (263, N'San Miguel', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (264, N'Mburucuyá', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (265, N'Mercedes', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (266, N'Monte Caseros', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (267, N'San Cosme', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (268, N'ItatÍ', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (269, N'Saladas', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (270, N'Capital', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (271, N'San Luis del Palmar', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (272, N'San Roque', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (273, N'Concepción', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (274, N'Santo Tomé', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (275, N'Sauce', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (276, N'Paso de los Libres', 15)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (277, N'Nogoyá', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (278, N'Victoria', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (279, N'Federación', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (280, N'La Paz', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (281, N'Concordia', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (282, N'Villaguay', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (283, N'Federal', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (284, N'Gualeguaychú', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (285, N'San Salvador', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (286, N'Gualeguay', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (287, N'Colón', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (288, N'Uruguay', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (289, N'Tala', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (290, N'Paraná', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (291, N'Feliciano', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (292, N'Diamante', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (293, N'Islas del Ibicuy', 8)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (294, N'Ramón Lista', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (295, N'Formosa', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (296, N'Matacos', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (297, N'Pilcomayo', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (298, N'Pirané', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (299, N'Bermejo', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (300, N'Laishi', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (301, N'Pilagás', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (302, N'Patiño', 23)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (303, N'El Carmen', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (304, N'Yavi', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (305, N'Palpalá', 16)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (306, N'San Lorenzo', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (307, N'Caseros', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (308, N'General López', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (309, N'Belgrano', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (310, N'San Martín', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (311, N'Iriondo', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (312, N'Salavina', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (313, N'Rivadavia', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (314, N'Ojo de Agua', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (315, N'Figueroa', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (316, N'Pellegrini', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (317, N'San Martín', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (318, N'General Taboada', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (319, N'Belgrano', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (320, N'Sarmiento', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (321, N'Robles', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (322, N'Jiménez', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (323, N'Banda', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (324, N'Copo', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (325, N'Avellaneda', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (326, N'Silípica', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (327, N'Alberdi', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (328, N'Guasayán', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (329, N'Quebrachos', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (330, N'Moreno', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (331, N'Atamisqui', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (332, N'Aguirre', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (333, N'Choya', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (334, N'Río Hondo', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (335, N'Loreto', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (336, N'Mitre', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (337, N'Capital', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (338, N'Juan F. Ibarra', 18)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (339, N'Ushuaia', 24)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (340, N'Río Grande', 24)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (341, N'Burruyacú', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (342, N'Tafí del Valle', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (343, N'Cruz Alta', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (344, N'Lules', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (345, N'Tafí Viejo', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (346, N'Famaillá', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (347, N'Trancas', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (348, N'Graneros', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (349, N'Chicligasta', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (350, N'La Cocha', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (351, N'Limay Mahuida', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (352, N'Loventué', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (353, N'Trenel', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (354, N'Rancul', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (355, N'Curacó', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (356, N'Chalileo', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (357, N'Toay', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (358, N'Atreucó', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (359, N'Quemú Quemú', 19)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (360, N'Independencia', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (361, N'Famatina', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (362, N'General Belgrano', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (363, N'Chamical', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (364, N'Rosario Vera Peñaloza', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (365, N'General Ocampo', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (366, N'Arauco', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (367, N'Capital', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (368, N'Castro Barros', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (369, N'Coronel Felipe Varela', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (370, N'General Juan F. Quiroga', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (371, N'San Blas de los Sauces', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (372, N'Chilecito', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (373, N'General Angel V. Peñaloza', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (374, N'General San Martín', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (375, N'General Lamadrid', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (376, N'Vinchina', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (377, N'Sanagasta', 20)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (378, N'San Martín', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (379, N'San Carlos', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (380, N'Lavalle', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (381, N'Santa Rosa', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (382, N'Las Heras', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (383, N'General Alvear', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (384, N'Guaymallén', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (385, N'Luján de Cuyo', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (386, N'La Paz', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (387, N'Godoy Cruz', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (388, N'Malargüe', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (389, N'Rivadavia', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (390, N'Junín', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (391, N'Capital', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (392, N'San Rafael', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (393, N'Maipú', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (394, N'Tunuyán', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (395, N'Tupungato', 5)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (396, N'Cainguás', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (397, N'Apóstoles', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (398, N'Candelaria', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (400, N'25 de Mayo', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (401, N'Guaraní', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (402, N'Capital', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (403, N'San Ignacio', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (404, N'Oberá', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (405, N'Montecarlo', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (406, N'Libertador Grl. San Martín', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (407, N'General Manuel Belgrano', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (408, N'San Javier', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (409, N'Concepción', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (410, N'San Pedro', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (411, N'Leandro N. Alem', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (412, N'Eldorado', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (413, N'Iguazú', 13)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (414, N'Confluencia', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (415, N'Pehuenches', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (416, N'Ñorquín', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (417, N'Huiliches', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (418, N'Picunches', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (419, N'Catan LilL', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (420, N'Loncopué', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (421, N'Zapala', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (422, N'Minas', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (423, N'Picún Leufú', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (424, N'Lácar', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (425, N'Añelo', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (426, N'Collón Curá', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (427, N'Chos Malal', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (428, N'Los Lagos', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (429, N'Aluminé', 9)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (430, N'Conesa', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (431, N'General Roca', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (432, N'Pilcaniyeu', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (433, N'9 de Julio', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (434, N'Avellaneda', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (435, N'25 de Mayo', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (436, N'Ñorquincó', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (437, N'Pichi Mahuida', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (438, N'Bariloche', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (439, N'San Antonio', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (440, N'Valcheta', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (441, N'El Cuy', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (442, N'Adolfo Alsina', 11)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (443, N'Capital', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (444, N'Cafayate', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (445, N'Santa Victoria', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (446, N'General Güemes', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (447, N'Anta', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (448, N'La Poma', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (449, N'Orán', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (450, N'La Viña', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (451, N'Chicoana', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (452, N'Metán', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (453, N'Guachipas', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (454, N'La Caldera', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (455, N'La Candelaria', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (456, N'Rivadavia', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (457, N'Cachi', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (458, N'Iruya', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (459, N'Rosario de la Frontera', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (460, N'Rosario de Lerma', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (461, N'Cerrillos', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (462, N'San Carlos', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (463, N'Los Andes', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (464, N'Molinos', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (465, N'Grl. José de San Martín', 7)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (466, N'9 de Julio', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (467, N'Iglesia', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (468, N'Valle Fértil', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (469, N'Calingasta', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (470, N'Pocito', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (471, N'Caucete', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (472, N'Chimbas', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (473, N'25 de Mayo', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (474, N'Angaco', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (475, N'Jáchal', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (476, N'Rawson', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (477, N'Rivadavia', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (478, N'San Martín', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (479, N'Capital', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (480, N'Santa Lucía', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (481, N'Zonda', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (482, N'Albardón', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (483, N'Ullum', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (484, N'Sarmiento', 10)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (485, N'Coronel Pringles', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (486, N'Libertador Grl. San Martín', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (487, N'Ayacucho', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (488, N'Junín', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (489, N'Belgrano', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (490, N'Chacabuco', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (491, N'La Capital', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (492, N'Gobernador Dupuy', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (493, N'General Pedernera', 17)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (494, N'Güer Aike', 22)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (495, N'Río Chico', 22)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (496, N'Deseado', 22)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (497, N'Lago Buenos Aires', 22)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (498, N'Magallanes', 22)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (499, N'Corpen Aike', 22)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (500, N'Lago Argentino', 22)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (501, N'Rosario', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (502, N'General Obligado', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (503, N'Constitución', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (504, N'San Javier', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (505, N'La Capital', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (506, N'9 de Julio', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (507, N'Castellanos', 4)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (508, N'Río Chico', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (509, N'Leales', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (510, N'Capital', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (511, N'Simoca', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (512, N'Monteros', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (513, N'Juan Bautista Alberdi', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (514, N'Yerba Buena', 6)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (515, N'Colón', 2)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (517, N'ANTARTIDA ARGENTINA', 24)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9001, N'COMUNA 01', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9002, N'COMUNA 02', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9003, N'COMUNA 03', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9004, N'COMUNA 04', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9005, N'COMUNA 05', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9006, N'COMUNA 06', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9007, N'COMUNA 07', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9008, N'COMUNA 08', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9009, N'COMUNA 09', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9010, N'COMUNA 10', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9011, N'COMUNA 11', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9012, N'COMUNA 12', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9013, N'COMUNA 13', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9014, N'COMUNA 14', 1)
GO
INSERT [dbo].[Table_ER_Partido] ([ID_Partido], [Nombre], [Provincia]) VALUES (9015, N'COMUNA 15', 1)
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (1, N'CABA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (2, N'BUENOS AIRES')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (3, N'CORDOBA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (4, N'SANTA FE')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (5, N'MENDOZA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (6, N'TUCUMAN')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (7, N'SALTA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (8, N'ENTRE RIOS')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (9, N'NEUQUEN')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (10, N'SAN JUAN')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (11, N'RIO NEGRO')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (12, N'CHUBUT')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (13, N'MISIONES')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (14, N'CHACO')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (15, N'CORRIENTES')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (16, N'JUJUY')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (17, N'SAN LUIS')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (18, N'SANTIAGO DEL ESTERO')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (19, N'LA PAMPA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (20, N'LA RIOJA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (21, N'CATAMARCA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (22, N'SANTA CRUZ')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (23, N'FORMOSA')
GO
INSERT [dbo].[Table_ER_Provincia] ([ID_Provincia], [Nombre]) VALUES (24, N'TIERRA DEL FUEGO')
GO
SET IDENTITY_INSERT [dbo].[Table_Pedido] ON 
GO
INSERT [dbo].[Table_Pedido] ([ID_Pedido], [Proveedor], [Sucursal], [Usuario], [Estado]) VALUES (5, 3, 3, 2, 1)
GO
INSERT [dbo].[Table_Pedido] ([ID_Pedido], [Proveedor], [Sucursal], [Usuario], [Estado]) VALUES (6, 3, 3, 2, 1)
GO
INSERT [dbo].[Table_Pedido] ([ID_Pedido], [Proveedor], [Sucursal], [Usuario], [Estado]) VALUES (7, 8, 1, 2, 1)
GO
INSERT [dbo].[Table_Pedido] ([ID_Pedido], [Proveedor], [Sucursal], [Usuario], [Estado]) VALUES (8, 13, 5, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Table_Pedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Pedido_Producto] ON 
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (1, 5, 21, 50, 0, 0)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (2, 5, 63, 50, 0, 1)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (3, 7, 81, 2, 0, 1)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (4, 6, 63, 20, 0, 0)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (5, 7, 68, 20, 0, 1)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (6, 6, 21, 30, 0, 0)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (7, 6, 58, 2, 0, 1)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (8, 5, 107, 1000, 0, 0)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (9, 6, 99, 1, 0, 0)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (10, 6, 21, 12, 0, 0)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (11, 5, 107, 12, 0, 1)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (12, 8, 73, 2, 0, 0)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (13, 8, 43, 12, 0, 1)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (14, 6, 8, 2, 0, 1)
GO
INSERT [dbo].[Table_Pedido_Producto] ([ID_pedprod], [ID_Pedido], [Producto], [Cantidad], [Recepcionada], [Estado]) VALUES (15, 5, 99, 2, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Table_Pedido_Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Producto] ON 
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (1, N'Fresas', 16, 1, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (2, N'Pimientos', 22, 2, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (3, N'Chuletas de Cordero', 9, 3, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (4, N'Sushi Kit', 13, 4, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (5, N'Pan de Centeno', 19, 5, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (6, N'Queso Cottage', 1, 6, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (7, N'Agua de Coco', 24, 7, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (8, N'Palitos de Pretzel', 3, 8, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (9, N'Barra de Granola', 7, 9, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (10, N'Helado de Fresa', 11, 10, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (11, N'Desinfectante Multiusos', 20, 11, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (12, N'Gel de Baño', 14, 12, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (13, N'Smartwatch', 2, 13, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (14, N'Camiseta Deportiva', 18, 14, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (15, N'Cubo de Basura', 25, 15, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (16, N'Puzzle de Animales', 6, 16, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (17, N'Destornillador Plano', 10, 17, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (18, N'Bloc de Notas', 15, 18, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (19, N'Historia de Ciencia Ficción', 21, 19, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (20, N'Estuche de Lápices', 5, 20, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (21, N'Plátanos', 3, 1, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (22, N'Espinaca', 7, 2, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (23, N'Costillas de Cerdo', 15, 3, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (24, N'Sardinas enlatadas', 20, 4, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (25, N'Croissants', 8, 5, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (26, N'Leche Deslactosada', 12, 6, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (27, N'Refresco de Cola', 18, 7, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (28, N'Pretzels', 5, 8, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (29, N'Granola', 10, 9, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (30, N'Helado de Chocolate', 23, 10, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (31, N'Limpiador Multiusos', 11, 11, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (32, N'Acondicionador', 14, 12, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (33, N'Tablet', 25, 13, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (34, N'Camisa Polo', 2, 14, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (35, N'Escoba', 17, 15, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (36, N'Rompecabezas 3D', 4, 16, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (37, N'Destornillador Phillips', 21, 17, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (38, N'Libreta de Dibujo', 9, 18, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (39, N'Novela de Misterio', 19, 19, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (40, N'Tijeras', 6, 20, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (41, N'Uvas', 11, 1, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (42, N'Tomate', 12, 2, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (43, N'Pollo', 13, 3, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (44, N'Atún enlatado', 14, 4, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (45, N'Baguette', 15, 5, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (46, N'Yogur Natural', 16, 6, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (47, N'Jugo de Naranja', 17, 7, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (48, N'Galletas', 18, 8, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (49, N'Avena', 19, 9, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (50, N'Pizza Congelada', 20, 10, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (51, N'Limpiavidrios', 21, 11, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (52, N'Jabón de Baño', 22, 12, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (53, N'Laptop', 23, 13, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (54, N'Jeans', 24, 14, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (55, N'Aspiradora Robot', 25, 15, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (56, N'Rompecabezas', 1, 16, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (57, N'Destornillador', 2, 17, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (58, N'Cuaderno de Notas', 3, 18, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (59, N'Ciencia Ficción', 4, 19, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (60, N'Caja de Clips', 5, 20, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (61, N'Manzanas', 1, 1, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (62, N'Lechuga', 2, 2, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (63, N'Carne de Res', 3, 3, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (64, N'Salmón', 4, 4, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (65, N'Pan Integral', 5, 5, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (66, N'Leche Entera', 6, 6, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (67, N'Agua Mineral', 7, 7, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (68, N'Papas Fritas', 8, 8, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (69, N'Cereal Integral', 9, 9, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (70, N'Helado de Vainilla', 10, 10, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (71, N'Detergente', 11, 11, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (72, N'Shampoo', 12, 12, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (73, N'Smartphone', 13, 13, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (74, N'Camiseta', 14, 14, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (75, N'Aspiradora', 15, 15, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (76, N'Muñeca', 16, 16, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (77, N'Martillo', 17, 17, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (78, N'Cuaderno', 18, 18, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (79, N'Novela', 19, 19, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (80, N'Cinta Adhesiva', 20, 20, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (81, N'Piñas', 8, 1, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (82, N'Berros', 4, 2, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (83, N'Costillas BBQ', 21, 3, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (84, N'Anchoas enlatadas', 17, 4, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (85, N'Bagels', 12, 5, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (86, N'Yogur con Frutas', 24, 6, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (87, N'Té Verde', 6, 7, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (88, N'Chips de Maíz', 9, 8, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (89, N'Muesli', 23, 9, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (90, N'Helado de Menta', 1, 10, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (91, N'Limpiador de Ventanas', 19, 11, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (92, N'Acondicionador de Volumen', 14, 12, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (93, N'Auriculares Inalámbricos', 10, 13, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (94, N'Chaqueta Deportiva', 16, 14, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (95, N'Escoba Eléctrica', 2, 15, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (96, N'Rompecabezas 3D de Paisaje', 7, 16, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (97, N'Destornillador Torx', 15, 17, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (98, N'Agenda de Cuero', 11, 18, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (99, N'Historia de Misterio', 3, 19, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (100, N'Borradores', 13, 20, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (101, N'Mangos', 5, 1, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (102, N'Calabacín', 20, 2, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (103, N'Costillas de Ternera', 18, 3, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (104, N'Pulpo Congelado', 8, 4, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (105, N'Pan Pita', 22, 5, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (106, N'Yogur Griego', 16, 6, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (107, N'Jugo de Manzana', 3, 7, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (108, N'Pretzels de Queso', 13, 8, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (109, N'Barra de Cereales', 17, 9, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (110, N'Helado de Avellana', 9, 10, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (111, N'Desengrasante', 25, 11, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (112, N'Jabón de Manos', 1, 12, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (113, N'Altavoces Bluetooth', 7, 13, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (114, N'Chaqueta de Cuero', 14, 14, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (115, N'Aspiradora de Mano', 12, 15, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (116, N'Puzzle 3D de Edificio', 4, 16, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (117, N'Destornillador de Precisión', 11, 17, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (118, N'Libreta de Cuero', 23, 18, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (119, N'Novela de Aventuras', 2, 19, 1)
GO
INSERT [dbo].[Table_Producto] ([ID_Producto], [Nombre], [Proveedor], [Tipo_Producto], [Estado]) VALUES (120, N'Lápices de Colores', 15, 20, 1)
GO
SET IDENTITY_INSERT [dbo].[Table_Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Proveedor] ON 
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (1, N'ProveedorA', 12345678, 5013, N'Calle X', N'10', N'1234', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (2, N'ProveedorB', 87654321, 5013, N'Calle Y', N'20', N'5678', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (3, N'ProveedorC', 23456789, 5034, N'Calle Z', N'30', N'9101', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (4, N'ProveedorD', 98765432, 420, N'Calle W', N'40', N'1213', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (5, N'ProveedorE', 11122334, 1798, N'Calle V', N'50', N'1415', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (6, N'ProveedorF', 44556677, 2929, N'Calle U', N'60', N'1617', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (7, N'ProveedorG', 88990011, 876, N'Calle T', N'70', N'1819', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (8, N'ProveedorH', 12131415, 2745, N'Calle S', N'80', N'2021', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (9, N'ProveedorI', 16171819, 2160, N'Calle R', N'90', N'2223', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (10, N'ProveedorJ', 20212223, 268, N'Calle Q', N'100', N'2425', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (11, N'ProveedorK', 24252627, 2781, N'Calle P', N'110', N'2627', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (12, N'ProveedorL', 28293031, 1418, N'Calle O', N'120', N'2829', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (13, N'ProveedorM', 32333435, 3389, N'Calle N', N'130', N'3031', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (14, N'ProveedorN', 36373839, 2603, N'Calle M', N'140', N'3233', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (15, N'ProveedorO', 40414243, 3616, N'Calle L', N'150', N'3435', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (16, N'ProveedorP', 44454647, 2840, N'Calle K', N'160', N'3637', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (17, N'ProveedorQ', 48495051, 2602, N'Calle J', N'170', N'3839', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (18, N'ProveedorR', 52535455, 2592, N'Calle I', N'180', N'4041', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (19, N'ProveedorS', 56575859, 3792, N'Calle H', N'190', N'4243', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (20, N'ProveedorT', 60616263, 153, N'Calle G', N'200', N'4445', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (21, N'ProveedorU', 64656667, 5013, N'Calle F', N'210', N'4647', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (22, N'ProveedorV', 68697071, 2905, N'Calle E', N'220', N'4849', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (23, N'ProveedorW', 72737475, 876, N'Calle D', N'230', N'5051', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (24, N'ProveedorX', 76777879, 63, N'Calle C', N'240', N'5253', 1)
GO
INSERT [dbo].[Table_Proveedor] ([ID_Proveedor], [Nombre], [CUIT], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (25, N'ProveedorY', 80818283, 2160, N'Calle B', N'250', N'5455', 1)
GO
SET IDENTITY_INSERT [dbo].[Table_Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Sucursal] ON 
GO
INSERT [dbo].[Table_Sucursal] ([ID_Sucursal], [Nombre], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (1, N'Central', 5009, N'Independencia', N'100', N'1073', 1)
GO
INSERT [dbo].[Table_Sucursal] ([ID_Sucursal], [Nombre], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (2, N'Devoto', 5035, N'Lastra', N'4000', N'2010', 1)
GO
INSERT [dbo].[Table_Sucursal] ([ID_Sucursal], [Nombre], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (3, N'Santos Lugares', 3049, N'Av. La Plata ', N'3600', N'1686', 1)
GO
INSERT [dbo].[Table_Sucursal] ([ID_Sucursal], [Nombre], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (4, N'Hurlingham', 1489, N'Jaureche', N'5000', N'2060', 1)
GO
INSERT [dbo].[Table_Sucursal] ([ID_Sucursal], [Nombre], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (5, N'Resistencia', 2684, N'San Martin', N'5000', N'3030', 1)
GO
INSERT [dbo].[Table_Sucursal] ([ID_Sucursal], [Nombre], [Localidad], [Calle], [Altura], [Codigo_Postal], [Estado]) VALUES (6, N'Cordoba Capital', 876, N'Calamuchita', N'300', N'4000', 1)
GO
SET IDENTITY_INSERT [dbo].[Table_Sucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_Tipo_Producto] ON 
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (1, N'Frutas')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (2, N'Verduras')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (3, N'Carnes')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (4, N'Pescado')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (5, N'Panadería')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (6, N'Lácteos')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (7, N'Bebidas')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (8, N'Snacks')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (9, N'Cereales')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (10, N'Productos Congelados')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (11, N'Productos de Limpieza')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (12, N'Cuidado Personal')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (13, N'Electrónicos')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (14, N'Ropa')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (15, N'Hogar')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (16, N'Juguetes')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (17, N'Herramientas')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (18, N'Artículos de Oficina')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (19, N'Libros')
GO
INSERT [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto], [Nombre_Tipo]) VALUES (20, N'Misceláneos')
GO
SET IDENTITY_INSERT [dbo].[Table_Tipo_Producto] OFF
GO
ALTER TABLE [dbo].[Tabla_Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Tabla_Usuarios_Tabla_Rol] FOREIGN KEY([Rol])
REFERENCES [dbo].[Tabla_Rol] ([ID_ROL])
GO
ALTER TABLE [dbo].[Tabla_Usuarios] CHECK CONSTRAINT [FK_Tabla_Usuarios_Tabla_Rol]
GO
ALTER TABLE [dbo].[Table_ER_Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Table_ER_Localidad_Table_ER_Partido] FOREIGN KEY([Partido])
REFERENCES [dbo].[Table_ER_Partido] ([ID_Partido])
GO
ALTER TABLE [dbo].[Table_ER_Localidad] CHECK CONSTRAINT [FK_Table_ER_Localidad_Table_ER_Partido]
GO
ALTER TABLE [dbo].[Table_ER_Partido]  WITH CHECK ADD  CONSTRAINT [FK_Table_ER_Partido_Table_ER_Provincia] FOREIGN KEY([Provincia])
REFERENCES [dbo].[Table_ER_Provincia] ([ID_Provincia])
GO
ALTER TABLE [dbo].[Table_ER_Partido] CHECK CONSTRAINT [FK_Table_ER_Partido_Table_ER_Provincia]
GO
ALTER TABLE [dbo].[Table_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Table_Pedido_Tabla_Usuarios] FOREIGN KEY([Usuario])
REFERENCES [dbo].[Tabla_Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Table_Pedido] CHECK CONSTRAINT [FK_Table_Pedido_Tabla_Usuarios]
GO
ALTER TABLE [dbo].[Table_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Table_Pedido_Table_Proveedor] FOREIGN KEY([Proveedor])
REFERENCES [dbo].[Table_Proveedor] ([ID_Proveedor])
GO
ALTER TABLE [dbo].[Table_Pedido] CHECK CONSTRAINT [FK_Table_Pedido_Table_Proveedor]
GO
ALTER TABLE [dbo].[Table_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Table_Pedido_Table_Sucursal1] FOREIGN KEY([Sucursal])
REFERENCES [dbo].[Table_Sucursal] ([ID_Sucursal])
GO
ALTER TABLE [dbo].[Table_Pedido] CHECK CONSTRAINT [FK_Table_Pedido_Table_Sucursal1]
GO
ALTER TABLE [dbo].[Table_Pedido_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Table_Pedido_Producto_Table_Pedido] FOREIGN KEY([ID_Pedido])
REFERENCES [dbo].[Table_Pedido] ([ID_Pedido])
GO
ALTER TABLE [dbo].[Table_Pedido_Producto] CHECK CONSTRAINT [FK_Table_Pedido_Producto_Table_Pedido]
GO
ALTER TABLE [dbo].[Table_Pedido_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Table_Pedido_Producto_Table_Producto] FOREIGN KEY([Producto])
REFERENCES [dbo].[Table_Producto] ([ID_Producto])
GO
ALTER TABLE [dbo].[Table_Pedido_Producto] CHECK CONSTRAINT [FK_Table_Pedido_Producto_Table_Producto]
GO
ALTER TABLE [dbo].[Table_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Table_Producto_Table_Proveedor] FOREIGN KEY([Proveedor])
REFERENCES [dbo].[Table_Proveedor] ([ID_Proveedor])
GO
ALTER TABLE [dbo].[Table_Producto] CHECK CONSTRAINT [FK_Table_Producto_Table_Proveedor]
GO
ALTER TABLE [dbo].[Table_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Table_Producto_Table_Tipo_Producto] FOREIGN KEY([Tipo_Producto])
REFERENCES [dbo].[Table_Tipo_Producto] ([id_Tipo_Ptroducto])
GO
ALTER TABLE [dbo].[Table_Producto] CHECK CONSTRAINT [FK_Table_Producto_Table_Tipo_Producto]
GO
ALTER TABLE [dbo].[Table_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Table_Proveedor_Table_ER_Localidad] FOREIGN KEY([Localidad])
REFERENCES [dbo].[Table_ER_Localidad] ([ID_Localidad])
GO
ALTER TABLE [dbo].[Table_Proveedor] CHECK CONSTRAINT [FK_Table_Proveedor_Table_ER_Localidad]
GO
ALTER TABLE [dbo].[Table_Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Table_Sucursal_Table_ER_Localidad] FOREIGN KEY([Localidad])
REFERENCES [dbo].[Table_ER_Localidad] ([ID_Localidad])
GO
ALTER TABLE [dbo].[Table_Sucursal] CHECK CONSTRAINT [FK_Table_Sucursal_Table_ER_Localidad]
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Localidad_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Localidad_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID_Localidad]
      ,[Nombre],Partido
  FROM [UAI].[dbo].[Table_ER_Localidad]END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Localidad_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Localidad_TraerPorID]
@ID_Localidad varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Localidad]
      ,[Nombre],Partido
  FROM [UAI].[dbo].[Table_ER_Localidad]
  where [ID_Localidad] = @ID_Localidad
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Localidad_TraerPorPartido]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Tabla_Localidad_TraerPorPartido]
@busqueda varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Localidad]
      ,[Nombre],Partido
  FROM [UAI].[dbo].[Table_ER_Localidad]
  where [Partido] = @busqueda
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Partido_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Partido_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID_Partido]
      ,[Nombre],Provincia
  FROM [UAI].[dbo].[Table_ER_Partido]END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Partido_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Partido_TraerPorID]
@ID_Partido varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Partido]
      ,[Nombre],Provincia
  FROM [UAI].[dbo].[Table_ER_Partido]
  where [ID_Partido] = @ID_Partido
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Partido_TraerPorProvincia]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Partido_TraerPorProvincia]
@Provincia varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Partido]
      ,[Nombre],[Provincia]
  FROM [UAI].[dbo].[Table_ER_Partido]
  where [Provincia] = @Provincia
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Pedido_agregar_pedido]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Tabla_Pedido_agregar_pedido]
	@ID_Pedido int,
	@proveedor int,@sucursal int,@usuario int, @estado int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if (@ID_Pedido=0) begin
			-- encontrar el nuevo id max(id)+1 	
			--INSERT
		INSERT INTO [UAI].[dbo].[Table_Pedido]
				   (
				   [Proveedor]
      ,[Sucursal]
      ,[Usuario],Estado)
			 VALUES
				   (
				   @proveedor,
				   @sucursal,
				   @usuario,@estado)
				  
	end 
	else begin
	-- upadte
		UPDATE [UAI].[dbo].[Table_Pedido]
		   SET [Proveedor] = @proveedor	
			  ,[Sucursal] = @sucursal
			  ,[Usuario]= @usuario
			  ,Estado=@estado
			  
		 WHERE [ID_Pedido]=@ID_Pedido

	END
end

 
      
      
     
     
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Pedido_Producto_agregar_pedido]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Tabla_Pedido_Producto_agregar_pedido]

	@ID_pedprod int,@pedido int,
	@producto int,@cantidad int,@recepcionada int,@estado int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if (@ID_pedprod=0) begin
			-- encontrar el nuevo id max(id)+1 	
			--INSERT
		INSERT INTO [UAI].[dbo].[Table_Pedido_Producto]
				   (
				   [ID_Pedido]
      ,[Producto]
      ,[Cantidad],Recepcionada,Estado)
			 VALUES
				   (
				   @pedido,
				   @producto,
				   @cantidad,
				   @recepcionada,
				   @estado)
				  
	end 
	else begin
	-- upadte
		UPDATE [UAI].[dbo].[Table_Pedido_Producto]
		SET [Producto] = @producto	
			  ,[Cantidad] = @Cantidad
			  ,Recepcionada =@recepcionada
			  ,Estado=@estado
			  
		 WHERE [ID_pedprod]=@ID_pedprod

	END
end

 
      
      
     
     
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Pedido_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Tabla_Pedido_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID_Pedido]
      ,[Proveedor]
      ,[Sucursal]
      ,[Usuario]
      ,[Estado]
  FROM [UAI].[dbo].[Table_Pedido]END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Pedido_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Pedido_TraerPorID]
@ID_Pedido int		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Pedido]
      ,[Proveedor]
      ,[Sucursal]
      ,[Usuario]
      ,[Estado]
  FROM [UAI].[dbo].[Table_Pedido]
  where  [ID_Pedido] = @ID_Pedido
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_PedidoProducto_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_PedidoProducto_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_pedprod]
      ,[ID_Pedido]
      ,[Producto]
      ,[Cantidad],Recepcionada,Estado
  FROM [UAI].[dbo].[Table_Pedido_Producto]
  END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Producto_agregar_Producto]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[Tabla_Producto_agregar_Producto]

	@id int,@nombre varchar(50),
	@proveedor int,@tipoproducto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if (@id=0) begin
			-- encontrar el nuevo id max(id)+1 	
			--INSERT
		INSERT INTO [UAI].[dbo].[Table_Producto]
				   (
				   [Nombre]
      ,[Proveedor]
      ,[Tipo_Producto])
			 VALUES
				   (@nombre ,@proveedor ,@tipoproducto)
				  
	end 
	else begin
	-- upadte
		UPDATE [UAI].[dbo].[Table_Producto]
		SET  [Nombre]=@nombre
      ,[Proveedor]=@proveedor
      ,[Tipo_Producto]=@tipoproducto
			  
			  
		 WHERE [ID_Producto]=@id

	END
end

 
      
      
     
     
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Producto_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Tabla_Producto_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Producto]
      ,[Nombre]
      ,[Proveedor]
      ,[Tipo_Producto],Estado
  FROM [UAI].[dbo].[Table_Producto]END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Producto_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Tabla_Producto_TraerPorID]
@ID_Producto varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Producto]
      ,[Nombre]
      ,[Proveedor]
      ,[Tipo_Producto]
      ,[Estado]
  FROM [UAI].[dbo].[Table_Producto]
  where  [ID_Producto] = @ID_Producto
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Proveedor_agregar_Proveedor]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Tabla_Proveedor_agregar_Proveedor]

	@ID_Proveedor int,@nombre varchar(50),@cuit int, @localidad int, @calle Varchar (50),@altura int, @codigopostal varchar(50), @estado int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if (@ID_Proveedor=0) begin
			-- encontrar el nuevo id max(id)+1 	
			--INSERT
		INSERT INTO [UAI].[dbo].[Table_Proveedor]
				   (
				   [Nombre]
				  ,[CUIT]
				  ,Localidad
				  ,[Calle]
				  ,[Altura]
				  ,[Codigo_Postal]
				  ,Estado
				  )
			 VALUES
				   (@nombre ,@cuit , @localidad , @calle ,@altura , @codigopostal ,@estado)
				  
	end 
	else begin
	-- upadte
		UPDATE [UAI].[dbo].[Table_Proveedor]
		SET
				[Nombre]=@nombre
			  ,[CUIT]=@cuit			  
			  ,[Localidad]=@localidad
			  ,[Calle]=@calle
			  ,[Altura]=@altura
			  ,[Codigo_Postal]=@codigopostal
			  ,Estado = @estado
			  
			  
		 WHERE [ID_Proveedor]=@ID_Proveedor

	END
end

 
      
      
     
     
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Proveedor_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Proveedor_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Proveedor]
      ,a.[Nombre]
      ,[CUIT]
      ,[Localidad]
      ,[Calle]
      ,[Altura]
      ,[Codigo_Postal],Estado
  FROM [UAI].[dbo].[Table_Proveedor]  a 
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Proveedor_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Proveedor_TraerPorID]
@ID_Proveedor varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Proveedor]
      ,a.[Nombre]
      ,[CUIT]
       ,[Localidad]
      ,[Calle]
      ,[Altura]
      ,[Codigo_Postal],Estado
  FROM [UAI].[dbo].[Table_Proveedor]  a 
  where a.[ID_Proveedor] = @ID_Proveedor
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Provincia_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Tabla_Provincia_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID_Provincia]
      ,[Nombre]
  FROM [UAI].[dbo].[Table_ER_Provincia]END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Provincia_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Tabla_Provincia_TraerPorID]
@busqueda varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID_Provincia]
      ,[Nombre]
  FROM [UAI].[dbo].[Table_ER_Provincia]
  where [ID_Provincia] = @busqueda
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Rol_agregar_rol]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Tabla_Rol_agregar_rol]
	@id int,
	@nombre varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if (@id=0) begin
			-- encontrar el nuevo id max(id)+1 	
			--INSERT
		INSERT INTO [dbo].[Tabla_Rol]
				   (
				   [Nombre_Rol]
				  )
			 VALUES
				   (
				   @nombre)
	end 
	else begin
	-- upadte
		UPDATE [dbo].[Tabla_Rol]
		   SET [Nombre_Rol] = @nombre
			  
		 WHERE [ID_ROL]=@id

	END
end

 
      
      
     
     
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Rol_Traer]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Tabla_Rol_Traer]

AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID_ROL]
      ,[Nombre_Rol]
  FROM [UAI].[dbo].[Tabla_Rol]
  
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Rol_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Tabla_Rol_TraerPorID]
@busqueda varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID_ROL]
      ,[Nombre_Rol]
  FROM [UAI].[dbo].[Tabla_Rol]
  where [ID_ROL] = @busqueda
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Sucursal_agregar_sucursal]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Tabla_Sucursal_agregar_sucursal]
	@id int,
	@nombre varchar(50),
	
	@localidad int,
	@calle varchar(50),
    @altura varchar(50),
	@codigo_postal varchar(50),
	@estado int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if (@id=0) begin
			-- encontrar el nuevo id max(id)+1 	
			--INSERT
		INSERT INTO [UAI].[dbo].[Table_Sucursal]
				   (
				  [Nombre]
      
      ,[Localidad]
      ,[Calle]
      ,[Altura]
      ,[Codigo_Postal],Estado)
			 VALUES
				   (
				   @nombre,
				  
				   @localidad,
				   @calle,
				   @altura,
				   @codigo_postal,
				   @estado)
	end 
	else begin
	-- upadte
		UPDATE [UAI].[dbo].[Table_Sucursal]
		   SET 
      [Nombre]=@nombre
      
      ,[Localidad]=@localidad
      ,[Calle]=@calle
      ,[Altura]=@altura
      ,[Codigo_Postal]=@codigo_postal
      ,[Estado]=@estado
		 WHERE [ID_Sucursal]=@id

	END
end

 
      
      
     
     
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Sucursal_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Sucursal_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;

	SELECT  [ID_Sucursal]
      ,[Nombre]
      ,[Localidad]
      ,[Calle]
      ,[Altura]
      ,[Codigo_Postal],Estado
  FROM [UAI].[dbo].[Table_Sucursal] 
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Sucursal_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Sucursal_TraerPorID]
@ID_Sucursal varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID_Sucursal]
      ,a.[Nombre]
      
      ,[Localidad]
      ,[Calle]
      ,[Altura]
      ,[Codigo_Postal],Estado
  FROM [UAI].[dbo].[Table_Sucursal] a 
where a.[ID_Sucursal] = @ID_Sucursal
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_TipoProducto_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_TipoProducto_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT [id_Tipo_Ptroducto] as  [id_Tipo_Producto]
      ,[Nombre_Tipo]
  FROM [UAI].[dbo].[Table_Tipo_Producto]
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_TipoProducto_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Tabla_TipoProducto_TraerPorID]
@ID_Tipo_Producto varchar (50)	
AS
BEGIN
	SET NOCOUNT ON;
SELECT [id_Tipo_Ptroducto] as  [id_Tipo_Producto]
      ,[Nombre_Tipo]
  FROM [UAI].[dbo].[Table_Tipo_Producto]
  where [id_Tipo_Ptroducto] = @ID_Tipo_Producto
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_agregar_usuario]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Tabla_Usuarios_agregar_usuario]
	@id int,
	@nombre varchar(50),@apellido varchar(50),@dni int, @mail varchar(50),@usuario_nombre varchar(50),
    @password varchar(50),@rol int,@estado int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if (@id=0) begin
			-- encontrar el nuevo id max(id)+1 	
			--INSERT
		INSERT INTO [dbo].[Tabla_Usuarios]
				   (
				   [Nombre]
				  ,[Apellido]
				  ,[DNI]
				  ,[Mail]
				  ,[Usuario]
				  ,[Contraseña]
				  ,[Rol]
				  ,[Estado])
			 VALUES
				   (
				   @nombre,
				   @apellido,
				   @dni, 
				   @mail,
				   @usuario_nombre,
				   @password,
				   @rol,
				   @estado)
	end 
	else begin
	-- upadte
		UPDATE [dbo].[Tabla_Usuarios]
		   SET [Apellido] = @apellido
			  ,[Nombre] = @nombre
			  ,[DNI] = @dni
			  ,[Mail] = @mail
			  ,[Usuario]= @usuario_nombre
			  ,[Contraseña] = @password
			  ,[Rol] = @rol
			  ,[estado] = @estado
		 WHERE id=@id

	END
end

 
      
      
     
     
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_Traer]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Usuarios_Traer]

AS
BEGIN
	SET NOCOUNT ON;
SELECT  [ID]
      ,[Nombre]
      ,[Apellido]
      ,[DNI]
      ,[Mail]
      ,[Usuario]
      ,[Contraseña]
      ,[Rol]
      ,[Estado]
  FROM [UAI].[dbo].[Tabla_Usuarios]

  
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_Traer_Todo]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Tabla_Usuarios_Traer_Todo]

AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID]
      ,[Nombre]
      ,[Apellido]
      ,[DNI]
      ,[Mail]
      ,[Usuario]
      ,[Contraseña]
      ,[Rol],Nombre_Rol
      ,[Estado]
  FROM [UAI].[dbo].[Tabla_Usuarios] a inner join [UAI].[dbo].[Tabla_Rol] b on(a.Rol=b.ID_ROL)
  
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_TraerPorApellido]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Usuarios_TraerPorApellido]
@busqueda varchar (180)	
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID]
      ,[Nombre]
      ,[Apellido]
      ,[DNI]
      ,[Mail]
      ,[Usuario]
      ,[Contraseña]
      ,[Rol]
      ,[Estado]
  FROM [UAI].[dbo].[Tabla_Usuarios]
  where [Apellido] = @busqueda
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_TraerPorDNI]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Usuarios_TraerPorDNI]
@busqueda int	
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID]
      ,[Nombre]
      ,[Apellido]
      ,[DNI]
      ,[Mail]
      ,[Usuario]
      ,[Contraseña]
      ,[Rol]
      ,[Estado]
  FROM [UAI].[dbo].[Tabla_Usuarios]
  where DNI = @busqueda
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_TraerPorID]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Usuarios_TraerPorID]
@busqueda varchar (50)		
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID]
      ,[Nombre]
      ,[Apellido]
      ,[DNI]
      ,[Mail]
      ,[Usuario]
      ,[Contraseña]
      ,[Rol],Nombre_Rol
      ,[Estado]
  FROM [UAI].[dbo].[Tabla_Usuarios] a inner join [UAI].[dbo].[Tabla_Rol] b on(a.Rol=b.ID_ROL)
  where a.[ID] = @busqueda
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_TraerPorMail]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Usuarios_TraerPorMail]
@busqueda varchar (180)	
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID]
      ,[Nombre]
      ,[Apellido]
      ,[DNI]
      ,[Mail]
      ,[Usuario]
      ,[Contraseña]
      ,[Rol]
      ,[Estado]
  FROM [UAI].[dbo].[Tabla_Usuarios]
  where [Mail] = @busqueda
END
GO
/****** Object:  StoredProcedure [dbo].[Tabla_Usuarios_TraerPorUsuario]    Script Date: 20/11/2023 14:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Tabla_Usuarios_TraerPorUsuario]
@usuario varchar (50)	
AS
BEGIN
	SET NOCOUNT ON;
SELECT [ID]
      ,[Nombre]
      ,[Apellido]
      ,[DNI]
      ,[Mail]
      ,[Usuario]
      ,[Contraseña]
      ,[Rol],Nombre_Rol
      ,[Estado]
  FROM [UAI].[dbo].[Tabla_Usuarios] a inner join [UAI].[dbo].[Tabla_Rol] b on(a.Rol=b.ID_ROL)
  where [Usuario] = @usuario
END
GO
