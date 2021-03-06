USE [universidad]
GO
/****** Object:  ForeignKey [FK__programa__Facult__09DE7BCC]    Script Date: 06/16/2020 01:29:38 ******/
ALTER TABLE [dbo].[programa] DROP CONSTRAINT [FK__programa__Facult__09DE7BCC]
GO
/****** Object:  ForeignKey [FK__profesor__Facult__0519C6AF]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[profesor] DROP CONSTRAINT [FK__profesor__Facult__0519C6AF]
GO
/****** Object:  ForeignKey [FK__estudiant__progr__0F975522]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[estudiante] DROP CONSTRAINT [FK__estudiant__progr__0F975522]
GO
/****** Object:  ForeignKey [FK__curso__asignatur__267ABA7A]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[curso] DROP CONSTRAINT [FK__curso__asignatur__267ABA7A]
GO
/****** Object:  ForeignKey [FK__curso__profesor___25869641]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[curso] DROP CONSTRAINT [FK__curso__profesor___25869641]
GO
/****** Object:  ForeignKey [FK__matricula__curso__276EDEB3]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[matricula] DROP CONSTRAINT [FK__matricula__curso__276EDEB3]
GO
/****** Object:  ForeignKey [FK__matricula__estud__20C1E124]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[matricula] DROP CONSTRAINT [FK__matricula__estud__20C1E124]
GO
/****** Object:  ForeignKey [FK__Nota__Id_estudia__38996AB5]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [FK__Nota__Id_estudia__38996AB5]
GO
/****** Object:  ForeignKey [FK__Nota__Id_matricu__37A5467C]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [FK__Nota__Id_matricu__37A5467C]
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [FK__Nota__Id_estudia__38996AB5]
GO
ALTER TABLE [dbo].[Nota] DROP CONSTRAINT [FK__Nota__Id_matricu__37A5467C]
GO
DROP TABLE [dbo].[Nota]
GO
/****** Object:  Table [dbo].[matricula]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[matricula] DROP CONSTRAINT [FK__matricula__curso__276EDEB3]
GO
ALTER TABLE [dbo].[matricula] DROP CONSTRAINT [FK__matricula__estud__20C1E124]
GO
DROP TABLE [dbo].[matricula]
GO
/****** Object:  Table [dbo].[curso]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[curso] DROP CONSTRAINT [FK__curso__asignatur__267ABA7A]
GO
ALTER TABLE [dbo].[curso] DROP CONSTRAINT [FK__curso__profesor___25869641]
GO
DROP TABLE [dbo].[curso]
GO
/****** Object:  Table [dbo].[estudiante]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[estudiante] DROP CONSTRAINT [FK__estudiant__progr__0F975522]
GO
DROP TABLE [dbo].[estudiante]
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[profesor] DROP CONSTRAINT [FK__profesor__Facult__0519C6AF]
GO
DROP TABLE [dbo].[profesor]
GO
/****** Object:  Table [dbo].[programa]    Script Date: 06/16/2020 01:29:38 ******/
ALTER TABLE [dbo].[programa] DROP CONSTRAINT [FK__programa__Facult__09DE7BCC]
GO
DROP TABLE [dbo].[programa]
GO
/****** Object:  Table [dbo].[asignatura]    Script Date: 06/16/2020 01:29:38 ******/
DROP TABLE [dbo].[asignatura]
GO
/****** Object:  Table [dbo].[facultad]    Script Date: 06/16/2020 01:29:38 ******/
DROP TABLE [dbo].[facultad]
GO
/****** Object:  Table [dbo].[facultad]    Script Date: 06/16/2020 01:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[facultad](
	[Id_facultad] [int] NOT NULL,
	[nombre_facultad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_facultad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[facultad] ([Id_facultad], [nombre_facultad]) VALUES (111, N'Ingenieria Y Arquitectura')
INSERT [dbo].[facultad] ([Id_facultad], [nombre_facultad]) VALUES (112, N'Ciencias Basicas')
INSERT [dbo].[facultad] ([Id_facultad], [nombre_facultad]) VALUES (113, N'Medicina')
INSERT [dbo].[facultad] ([Id_facultad], [nombre_facultad]) VALUES (114, N'Ciencias Agrarias')
/****** Object:  Table [dbo].[asignatura]    Script Date: 06/16/2020 01:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[asignatura](
	[Id_asignatura] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_asignatura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (111, N'Calculo I')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (112, N'Calculo II')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (113, N'Calculo III')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (114, N'Ecuaciones')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (115, N'Matematicas Especiales')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (116, N'Programacion I')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (117, N'Programacion II')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (118, N'Programacion III')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (119, N'Algoritmos')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (120, N'Electiva Profesional')
INSERT [dbo].[asignatura] ([Id_asignatura], [nombre]) VALUES (121, N'Electiva de Ingenieria')
/****** Object:  Table [dbo].[programa]    Script Date: 06/16/2020 01:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[programa](
	[Id_programa] [int] NOT NULL,
	[nombre_programa] [varchar](50) NOT NULL,
	[Facultad_id_facultad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_programa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (111, N'Ingenieria de sistemas', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (112, N'Ingenieria Electrica', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (113, N'Ingenieria Mecatronica', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (114, N'Ingenieria Telecomunicaciones', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (115, N'Arquitectura', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (116, N'Ingenieria Civil', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (117, N'Ingenieria Mecanica', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (118, N'Ingenieria de Sonido', 111)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (119, N'Geologia', 114)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (120, N'Medicina', 113)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (121, N'Licenciatura en educacion fisica', 112)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (122, N'Zootecnia', 113)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (123, N'Odontologia', 113)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (124, N'Enfermeria', 113)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (125, N'Agronomia', 114)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (126, N'Licenciatura en lengua castellana', 112)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (127, N'Licenciatura en ingles', 112)
INSERT [dbo].[programa] ([Id_programa], [nombre_programa], [Facultad_id_facultad]) VALUES (128, N'Licenciatura en artes y humanidades', 112)
/****** Object:  Table [dbo].[profesor]    Script Date: 06/16/2020 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[profesor](
	[Id_profesor] [int] NOT NULL,
	[Nombrer_profesor] [varchar](50) NOT NULL,
	[Apellido_profesor] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Facultad_id_facultad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_profesor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762222, N'Maria', N'Quiñonez', N'3118768549', 114)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762223, N'George', N'Reyes', N'3204326854', 114)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762224, N'Pedro', N'Ariza', N'3102354123', 111)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762225, N'Victor', N'Prada', N'3147685789', 112)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762226, N'Jose', N'Sanchez', N'3119878698', 113)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762227, N'Manuel', N'Perez', N'3210334567', 112)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762228, N'Raul', N'Mendez', N'3104565784', 111)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762229, N'Harvey', N'Gamboa', N'3003487289', 111)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762230, N'Jhoana', N'Arismendi', N'3209675831', 113)
INSERT [dbo].[profesor] ([Id_profesor], [Nombrer_profesor], [Apellido_profesor], [Telefono], [Facultad_id_facultad]) VALUES (1090762231, N'Victor', N'Rey', N'3228796789', 114)
/****** Object:  Table [dbo].[estudiante]    Script Date: 06/16/2020 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estudiante](
	[Id_estudiante] [int] NOT NULL,
	[nombre_estudiante] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[programa_id_programa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_estudiante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769820, N'Hans', N'Rondon', 111)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769821, N'Aldair', N'Gonzales', 111)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769822, N'Omar', N'Alexis', 111)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769823, N'Patricia', N'Rodriguez', 112)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769824, N'Laura', N'Rondon', 116)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769825, N'Samuel', N'Cardenas', 114)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769826, N'Dario', N'Hernandez', 115)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769827, N'Fabio', N'Alvarez', 116)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769828, N'Alonso', N'Gutierrez', 118)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769829, N'Manuel', N'Peña', 118)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769830, N'Marina', N'Rendon', 119)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769831, N'Camila', N'Rua', 120)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769832, N'Maria', N'Monsalve', 121)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769833, N'Manuel', N'Casas', 121)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769834, N'Julian', N'Meneses', 122)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769835, N'Laura', N'Rosales', 122)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769836, N'Melisa', N'Duarte', 114)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769837, N'Ediberto', N'Muñoz', 114)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769838, N'Cris', N'Rojas', 113)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769839, N'Isaac', N'Rojas', 115)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769840, N'Tatiana', N'Lobo', 116)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769841, N'Rafael', N'Zabala', 117)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769842, N'Rodrigo', N'Rendon', 117)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769843, N'Manuel', N'Manosalva', 118)
INSERT [dbo].[estudiante] ([Id_estudiante], [nombre_estudiante], [apellido], [programa_id_programa]) VALUES (908769844, N'Juan', N'Telles', 118)
/****** Object:  Table [dbo].[curso]    Script Date: 06/16/2020 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[curso](
	[Id_curso] [int] NOT NULL,
	[grupo] [varchar](50) NOT NULL,
	[cantidad_estudiantes] [int] NOT NULL,
	[asignatura_id_asignatura] [int] NOT NULL,
	[profesor_id_profesor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_curso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
INSERT [dbo].[curso] ([Id_curso], [grupo], [cantidad_estudiantes], [asignatura_id_asignatura], [profesor_id_profesor]) VALUES (111, N'AR', 35, 111, 1090762222)
INSERT [dbo].[curso] ([Id_curso], [grupo], [cantidad_estudiantes], [asignatura_id_asignatura], [profesor_id_profesor]) VALUES (112, N'BR', 28, 112, 1090762223)
INSERT [dbo].[curso] ([Id_curso], [grupo], [cantidad_estudiantes], [asignatura_id_asignatura], [profesor_id_profesor]) VALUES (113, N'CR', 32, 111, 1090762222)
INSERT [dbo].[curso] ([Id_curso], [grupo], [cantidad_estudiantes], [asignatura_id_asignatura], [profesor_id_profesor]) VALUES (114, N'AR', 44, 112, 1090762224)
INSERT [dbo].[curso] ([Id_curso], [grupo], [cantidad_estudiantes], [asignatura_id_asignatura], [profesor_id_profesor]) VALUES (115, N'DR', 29, 112, 1090762225)
INSERT [dbo].[curso] ([Id_curso], [grupo], [cantidad_estudiantes], [asignatura_id_asignatura], [profesor_id_profesor]) VALUES (116, N'FR', 27, 115, 1090762226)
/****** Object:  Table [dbo].[matricula]    Script Date: 06/16/2020 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matricula](
	[Id_matricula] [int] NOT NULL,
	[curso_id_curso] [int] NOT NULL,
	[estudiante_id_estudiante] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_matricula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (111, 111, 908769820)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (112, 111, 908769821)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (113, 111, 908769822)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (114, 111, 908769823)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (115, 111, 908769824)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (116, 111, 908769825)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (117, 111, 908769826)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (118, 112, 908769827)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (119, 112, 908769828)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (120, 112, 908769829)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (121, 112, 908769830)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (122, 112, 908769831)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (123, 113, 908769832)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (124, 113, 908769833)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (125, 113, 908769834)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (126, 113, 908769835)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (127, 113, 908769836)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (128, 113, 908769837)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (129, 113, 908769838)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (130, 114, 908769839)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (131, 114, 908769840)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (132, 114, 908769841)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (133, 114, 908769842)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (134, 114, 908769843)
INSERT [dbo].[matricula] ([Id_matricula], [curso_id_curso], [estudiante_id_estudiante]) VALUES (135, 114, 908769844)
/****** Object:  Table [dbo].[Nota]    Script Date: 06/16/2020 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nota](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Nota] [varchar](50) NOT NULL,
	[Id_matricula] [int] NOT NULL,
	[Id_estudiante] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
SET IDENTITY_INSERT [dbo].[Nota] ON
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (100, N'3.9', 111, 908769820)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (107, N'4.5', 119, 908769828)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (108, N'4.9', 130, 908769839)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (109, N'2.92', 118, 908769827)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (110, N'2.7', 135, 908769844)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (111, N'3.9', 124, 908769833)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (112, N'3.9', 124, 908769833)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (113, N'4.3', 125, 908769834)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (114, N'4.2', 127, 908769836)
INSERT [dbo].[Nota] ([Id], [Nota], [Id_matricula], [Id_estudiante]) VALUES (115, N'3.99', 126, 908769835)
SET IDENTITY_INSERT [dbo].[Nota] OFF
/****** Object:  ForeignKey [FK__programa__Facult__09DE7BCC]    Script Date: 06/16/2020 01:29:38 ******/
ALTER TABLE [dbo].[programa]  WITH CHECK ADD FOREIGN KEY([Facultad_id_facultad])
REFERENCES [dbo].[facultad] ([Id_facultad])
GO
/****** Object:  ForeignKey [FK__profesor__Facult__0519C6AF]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[profesor]  WITH CHECK ADD FOREIGN KEY([Facultad_id_facultad])
REFERENCES [dbo].[facultad] ([Id_facultad])
GO
/****** Object:  ForeignKey [FK__estudiant__progr__0F975522]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[estudiante]  WITH CHECK ADD FOREIGN KEY([programa_id_programa])
REFERENCES [dbo].[programa] ([Id_programa])
GO
/****** Object:  ForeignKey [FK__curso__asignatur__267ABA7A]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[curso]  WITH CHECK ADD FOREIGN KEY([asignatura_id_asignatura])
REFERENCES [dbo].[asignatura] ([Id_asignatura])
GO
/****** Object:  ForeignKey [FK__curso__profesor___25869641]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[curso]  WITH CHECK ADD FOREIGN KEY([profesor_id_profesor])
REFERENCES [dbo].[profesor] ([Id_profesor])
GO
/****** Object:  ForeignKey [FK__matricula__curso__276EDEB3]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[matricula]  WITH CHECK ADD FOREIGN KEY([curso_id_curso])
REFERENCES [dbo].[curso] ([Id_curso])
GO
/****** Object:  ForeignKey [FK__matricula__estud__20C1E124]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[matricula]  WITH CHECK ADD FOREIGN KEY([estudiante_id_estudiante])
REFERENCES [dbo].[estudiante] ([Id_estudiante])
GO
/****** Object:  ForeignKey [FK__Nota__Id_estudia__38996AB5]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD FOREIGN KEY([Id_estudiante])
REFERENCES [dbo].[estudiante] ([Id_estudiante])
GO
/****** Object:  ForeignKey [FK__Nota__Id_matricu__37A5467C]    Script Date: 06/16/2020 01:29:39 ******/
ALTER TABLE [dbo].[Nota]  WITH CHECK ADD FOREIGN KEY([Id_matricula])
REFERENCES [dbo].[matricula] ([Id_matricula])
GO
