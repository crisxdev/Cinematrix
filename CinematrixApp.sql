USE [CinematrixApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/06/2025 13:16:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sesion_id] [int] NOT NULL,
	[inicio] [datetime] NOT NULL,
	[fin] [datetime] NULL,
	[estado] [nvarchar](20) NOT NULL,
	[autorizacion] [nvarchar](50) NOT NULL,
	[canal] [nvarchar](20) NOT NULL,
	[medio] [nvarchar](20) NOT NULL,
	[importe] [decimal](5, 2) NULL,
 CONSTRAINT [PK__Compra__3213E83F8A962A2B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ocupacion]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ocupacion](
	[sesion_id] [int] NOT NULL,
	[butaca] [nvarchar](10) NOT NULL,
	[estado] [nvarchar](20) NOT NULL,
	[compra_id] [int] NOT NULL,
	[tarifa_nombre] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK__Ocupacio__4EA6BB6DF73B9873] PRIMARY KEY CLUSTERED 
(
	[sesion_id] ASC,
	[butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [nvarchar](max) NOT NULL,
	[anio] [int] NULL,
	[calificacion] [nvarchar](5) NOT NULL,
	[categoria] [nvarchar](50) NOT NULL,
	[duracion] [int] NULL,
	[formato] [nvarchar](50) NULL,
	[imagen] [nvarchar](255) NOT NULL,
	[poster] [nvarchar](500) NULL,
	[sinopsis] [nvarchar](500) NOT NULL,
	[trailer] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK__Pelicula__3213E83F1E396DEF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__Rol__3213E83F9FE5E9A8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sala](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[aforo] [int] NULL,
	[plano] [nvarchar](2048) NOT NULL,
 CONSTRAINT [PK__Sala__3213E83F3EDF4A3C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sesion]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sesion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sala_id] [int] NOT NULL,
	[pelicula_id] [int] NOT NULL,
	[inicio] [datetime] NOT NULL,
	[fin] [datetime] NOT NULL,
	[estado] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__Sesion__3213E83F1FA82287] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifa](
	[nombre] [nvarchar](10) NOT NULL,
	[precio] [decimal](4, 2) NULL,
 CONSTRAINT [PK__Tarifa__72AFBCC733D2AAC3] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[compra_id] [int] NOT NULL,
	[butaca] [nvarchar](10) NOT NULL,
	[tarifa_nombre] [nvarchar](10) NOT NULL,
	[importe] [decimal](4, 2) NULL,
	[pelicula_titulo] [nvarchar](max) NULL,
	[sala_nombre] [nvarchar](50) NULL,
	[sesion_inicio] [datetime] NULL,
 CONSTRAINT [PK__Ticket__3213E83FF2CCECBB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/06/2025 13:16:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[correo] [nvarchar](100) NOT NULL,
	[contraseña] [nvarchar](100) NOT NULL,
	[rol_id] [int] NOT NULL,
 CONSTRAINT [PK__Usuario__3213E83F31F84249] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compra] ADD  DEFAULT (getdate()) FOR [inicio]
GO
ALTER TABLE [dbo].[Compra] ADD  DEFAULT (N'EN_PROCESO') FOR [estado]
GO
ALTER TABLE [dbo].[Compra] ADD  DEFAULT (N'') FOR [autorizacion]
GO
ALTER TABLE [dbo].[Compra] ADD  DEFAULT (N'') FOR [medio]
GO
ALTER TABLE [dbo].[Ocupacion] ADD  DEFAULT (N'RESERVADA') FOR [estado]
GO
ALTER TABLE [dbo].[Pelicula] ADD  DEFAULT (N'2D ESPAÑOL') FOR [formato]
GO
ALTER TABLE [dbo].[Sesion] ADD  DEFAULT (N'PROGRAMADA') FOR [estado]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK__Compra__sesion_i__49C3F6B7] FOREIGN KEY([sesion_id])
REFERENCES [dbo].[Sesion] ([id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK__Compra__sesion_i__49C3F6B7]
GO
ALTER TABLE [dbo].[Ocupacion]  WITH CHECK ADD  CONSTRAINT [FK__Ocupacion__compr__571DF1D5] FOREIGN KEY([compra_id])
REFERENCES [dbo].[Compra] ([id])
GO
ALTER TABLE [dbo].[Ocupacion] CHECK CONSTRAINT [FK__Ocupacion__compr__571DF1D5]
GO
ALTER TABLE [dbo].[Ocupacion]  WITH CHECK ADD  CONSTRAINT [FK__Ocupacion__sesio__5441852A] FOREIGN KEY([sesion_id])
REFERENCES [dbo].[Sesion] ([id])
GO
ALTER TABLE [dbo].[Ocupacion] CHECK CONSTRAINT [FK__Ocupacion__sesio__5441852A]
GO
ALTER TABLE [dbo].[Ocupacion]  WITH CHECK ADD  CONSTRAINT [FK__Ocupacion__tarif__5812160E] FOREIGN KEY([tarifa_nombre])
REFERENCES [dbo].[Tarifa] ([nombre])
GO
ALTER TABLE [dbo].[Ocupacion] CHECK CONSTRAINT [FK__Ocupacion__tarif__5812160E]
GO
ALTER TABLE [dbo].[Sesion]  WITH CHECK ADD  CONSTRAINT [FK__Sesion__pelicula__403A8C7D] FOREIGN KEY([pelicula_id])
REFERENCES [dbo].[Pelicula] ([id])
GO
ALTER TABLE [dbo].[Sesion] CHECK CONSTRAINT [FK__Sesion__pelicula__403A8C7D]
GO
ALTER TABLE [dbo].[Sesion]  WITH CHECK ADD  CONSTRAINT [FK__Sesion__sala_id__3F466844] FOREIGN KEY([sala_id])
REFERENCES [dbo].[Sala] ([id])
GO
ALTER TABLE [dbo].[Sesion] CHECK CONSTRAINT [FK__Sesion__sala_id__3F466844]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK__Ticket__compra_i__5AEE82B9] FOREIGN KEY([compra_id])
REFERENCES [dbo].[Compra] ([id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK__Ticket__compra_i__5AEE82B9]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK__Usuario__rol_id__628FA481] FOREIGN KEY([rol_id])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK__Usuario__rol_id__628FA481]
GO


INSERT INTO sala (nombre,aforo,plano) VALUES
('SALA 1',148,
'{
"A":["__","__","01","02","03","04","05","06","07","08","09","10","__","__","__","__"],
"B":["__","__","01","02","03","04","05","06","07","08","09","10","__","__","__","__"],
"C":["01","02","03","04","05","06","07","08","09","10","11","12","__","__","__","__"],
"D":["01","02","03","04","05","06","07","08","09","10","11","12","__","__","__","__"],
"E":["01","02","03","04","05","06","07","08","09","10","11","12","__","__","__","__"],
"F":["01","02","03","04","05","06","07","08","09","10","11","12","__","__","__","__"],
"G":["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"H":["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"I":["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"J":["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"K":["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"]
}'
),
('SALA 2',144,
'{
"A": ["__","__","__","__","01","02","03","__","__","__","__","04","05","06","07","08"],
"B": ["__","__","__","__","01","02","03","__","__","__","__","04","05","06","07","08"],
"C": ["__","__","__","__","01","02","03","04","05","06","07","08","09","10","11","12"],
"D": ["__","__","__","__","01","02","03","04","05","06","07","08","09","10","11","12"],
"E": ["__","__","__","__","01","02","03","04","05","06","07","08","09","10","11","12"],
"F": ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"G": ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"H": ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"I": ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"J": ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"],
"K": ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16"]
}'
),
('SALA 3',116,
'{
"A": ["__","__","01","02","03","04","05","06","07","08","09","10"],
"B": ["__","__","01","02","03","04","05","06","07","08","09","10"],
"C": ["01","02","03","04","05","06","07","08","09","10","11","12"],
"D": ["01","02","03","04","05","06","07","08","09","10","11","12"],
"E": ["01","02","03","04","05","06","07","08","09","10","11","12"],
"F": ["01","02","03","04","05","06","07","08","09","10","11","12"],
"G": ["01","02","03","04","05","06","07","08","09","10","11","12"],
"H": ["01","02","03","04","05","06","07","08","09","10","11","12"],
"I": ["01","02","03","04","05","06","07","08","09","10","11","12"],
"J": ["01","02","03","04","05","06","07","08","09","10","11","12"]
}'
);

INSERT INTO tarifa (nombre,precio) VALUES
('ADULTO',9.40),
('REDUCIDA',7.90),
('FAMILIAR',7.50);