USE [master]
GO
/****** Object:  Database [Lebra]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE DATABASE [Lebra]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Lebra', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.EXPRESS\MSSQL\DATA\Lebra.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Lebra_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.EXPRESS\MSSQL\DATA\Lebra_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Lebra] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Lebra].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Lebra] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Lebra] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Lebra] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Lebra] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Lebra] SET ARITHABORT OFF 
GO
ALTER DATABASE [Lebra] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Lebra] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Lebra] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Lebra] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Lebra] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Lebra] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Lebra] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Lebra] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Lebra] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Lebra] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Lebra] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Lebra] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Lebra] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Lebra] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Lebra] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Lebra] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Lebra] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Lebra] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Lebra] SET  MULTI_USER 
GO
ALTER DATABASE [Lebra] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Lebra] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Lebra] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Lebra] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Lebra] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Lebra]
GO
/****** Object:  Table [dbo].[ACTION]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACTION](
	[ID_UTILI] [int] NOT NULL,
	[ID_CONTRAT_G] [int] NOT NULL,
	[TYPE_ACTION] [int] NULL,
	[DATE_ACTION] [int] NULL,
	[ID_ACTION] [int] NULL,
	[TOUCHER] [varchar](20) NULL,
 CONSTRAINT [PK_ACTION] PRIMARY KEY CLUSTERED 
(
	[ID_UTILI] ASC,
	[ID_CONTRAT_G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUTOMIBILE_RELATION_PERSON]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUTOMIBILE_RELATION_PERSON](
	[ID_CONTRAT_AUTO] [int] NOT NULL,
	[ID_PERSONNE] [int] NOT NULL,
	[TYPE_RELATION] [varchar](10) NULL,
 CONSTRAINT [PK_AUTOMIBILE_RELATION_PERSON] PRIMARY KEY CLUSTERED 
(
	[ID_CONTRAT_AUTO] ASC,
	[ID_PERSONNE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AUTOMOBILE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTOMOBILE](
	[ID_CONTRAT_AUTO] [int] NOT NULL,
	[ID_VEH_ASSUREE] [int] NOT NULL,
	[ID_CONTRAT_G] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUTRE_CONTRACT]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUTRE_CONTRACT](
	[ID_AUTRE_CONTRAT] [int] NOT NULL,
	[ID_COMP] [int] NOT NULL,
	[REF_CONTRACT] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMPANGIE_ASSURANCE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMPANGIE_ASSURANCE](
	[ID_COMP] [int] NOT NULL,
	[COMP_NAME] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONTRACT]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONTRACT](
	[ID_CONTRAT_G] [int] NOT NULL,
	[ID_INTER] [int] NOT NULL,
	[N_CONTRAT] [varchar](100) NULL,
	[DATE_CREATION] [int] NULL,
	[DATE_ECHANCE] [int] NULL,
	[DUREE_DE_CONTRAT] [int] NULL,
	[PRIME_TOTAL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GARANTIE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GARANTIE](
	[ID_GARANTIE] [int] NOT NULL,
	[ID_TYPE] [int] NOT NULL,
	[GARANTIE] [varchar](150) NULL,
	[DESC_PUBLIC] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GARANTIE_AUTOMIBILE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GARANTIE_AUTOMIBILE](
	[ID_CONTRAT_AUTO] [int] NOT NULL,
	[ID_GARANTIE] [int] NOT NULL,
	[VALEUR_VEHICULE] [float] NULL,
	[VALEUR_REMORQUE] [float] NULL,
	[TAUX_FRANCHISE] [float] NULL,
	[FRANCHISE_MIN] [float] NULL,
	[PRIME_ANNUAL] [float] NULL,
	[PRIME_COMPTANT] [float] NULL,
	[VALEUR_V_MAX] [float] NULL,
	[DESES] [float] NULL,
	[INVALIDITE] [float] NULL,
	[FR_MEDICAUX] [float] NULL,
	[FR_RAPATRIEMENT] [float] NULL,
	[AMENAG_DOM] [float] NULL,
 CONSTRAINT [PK_GARANTIE_AUTOMIBILE] PRIMARY KEY CLUSTERED 
(
	[ID_CONTRAT_AUTO] ASC,
	[ID_GARANTIE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INTERMEDIAIRE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INTERMEDIAIRE](
	[ID_INTER] [int] NOT NULL,
	[INTER_NAME] [varchar](100) NULL,
	[INTER_EMAIL] [varchar](100) NULL,
	[INTER_ADRESSE] [text] NULL,
	[INTER_TELEPHONE] [varchar](15) NULL,
	[INTER_DESC] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARQUE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARQUE](
	[ID_MARQUE] [int] NOT NULL,
	[MARQUE] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MODEL]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MODEL](
	[ID_MODEL] [int] NOT NULL,
	[ID_MARQUE] [int] NOT NULL,
	[MODEL] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PAYS]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAYS](
	[ID_PAYS] [int] NOT NULL,
	[NOM_PAYS] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERSONNE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONNE](
	[ID_PERSONNE] [int] NOT NULL,
	[ID_SOURCE] [int] NOT NULL,
	[ID_VILLE] [int] NOT NULL,
	[ID_SEXE] [int] NOT NULL,
	[ID_TIDEN] [int] NOT NULL,
	[ID_PAYS] [int] NOT NULL,
	[NOM_COMPLET] [varchar](100) NULL,
	[DATE_NAISS] [int] NULL,
	[ADRESSE] [text] NULL,
	[CODE_POSTAL] [varchar](10) NULL,
	[N_TELEPHONE] [varchar](20) NULL,
	[N_IDENT] [varchar](50) NULL,
	[N_PIRME] [varchar](50) NULL,
	[CATE_PERMI] [varchar](10) NULL,
	[DATE_PERM] [int] NULL,
	[ADRESSE_MAIL] [varchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RC_SCOLAIRE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RC_SCOLAIRE](
	[ID_RC_SCOLAIRE] [int] NOT NULL,
	[ID_PERSONNE] [int] NOT NULL,
	[ID_CONTRAT_G] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SETTING_UTILI]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SETTING_UTILI](
	[ID_SU] [int] NOT NULL,
	[ID_UTILI] [int] NOT NULL,
	[DEFAULT_SU] [varchar](15) NULL,
	[TYPE_MENU] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEXE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEXE](
	[ID_SEXE] [int] NOT NULL,
	[SEXE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOURCE_PERSONNE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOURCE_PERSONNE](
	[ID_SOURCE] [int] NOT NULL,
	[ID_TYPE_SOURCE] [int] NOT NULL,
	[NOM_SOURCE] [varchar](100) NULL,
	[ADRESSE_SOURCE] [text] NULL,
	[TELEPHONE_SOURCE] [varchar](20) NULL,
	[EMAIL_SOURCE] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TOURISME]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOURISME](
	[ID_TOURISME] [int] NOT NULL,
	[ID_AUTRE_CONTRAT] [int] NOT NULL,
	[ID_CONTRAT_G] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TOURISME_GARANTIE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOURISME_GARANTIE](
	[ID_TOURISME] [int] NOT NULL,
	[ID_GARANTIE] [int] NOT NULL,
	[PRIME] [float] NULL,
 CONSTRAINT [PK_TOURISME_GARANTIE] PRIMARY KEY CLUSTERED 
(
	[ID_TOURISME] ASC,
	[ID_GARANTIE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TOURISME_PERSONNE_RELATION]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TOURISME_PERSONNE_RELATION](
	[ID_TOURISME] [int] NOT NULL,
	[ID_PERSONNE] [int] NOT NULL,
	[TYPE_RELATION] [varchar](10) NULL,
 CONSTRAINT [PK_TOURISME_PERSONNE_RELATION] PRIMARY KEY CLUSTERED 
(
	[ID_TOURISME] ASC,
	[ID_PERSONNE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TYPE_GARANTIE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TYPE_GARANTIE](
	[ID_TYPE] [int] NOT NULL,
	[TYPE_TEXT] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TYPE_IDENTITE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TYPE_IDENTITE](
	[ID_TIDEN] [int] NOT NULL,
	[TYPE_IDENTITE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TYPE_SOURCE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TYPE_SOURCE](
	[ID_TYPE_SOURCE] [int] NOT NULL,
	[TYPE_SOURCE] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UTILISATEUR_BLOOM]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UTILISATEUR_BLOOM](
	[ID_UTILI] [int] IDENTITY(1,1) NOT NULL,
	[NOM_UTIL] [varchar](60) NULL,
	[MOTS_PASS_UTIL] [text] NULL,
	[DATE_CREATION] [float] NULL,
	[DATE_LAST_CNX] [float] NULL,
	[N_TELE] [varchar](35) NULL,
	[EMAIL] [varchar](35) NULL,
	[Role] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VEHICULE_ASSUREE]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VEHICULE_ASSUREE](
	[ID_VEH_ASSUREE] [int] NOT NULL,
	[ID_MARQUE] [int] NOT NULL,
	[ID_MODEL] [int] NULL,
	[IMMATRICULATION] [varchar](100) NULL,
	[PUIS_F] [int] NULL,
	[PTC] [int] NULL,
	[REMORQUE] [int] NULL,
	[DMC] [int] NULL,
	[MUTATION] [int] NULL,
	[N_PLACES] [int] NULL,
	[ORG_CREDI] [varchar](30) NULL,
	[POTE_AV] [int] NULL,
	[VALEUR_NEUF] [float] NULL,
	[VALEUR_DECLAR] [float] NULL,
	[VALEUR_GLACE] [float] NULL,
	[VALEUR_AV] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VILLES]    Script Date: 7/15/2020 1:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VILLES](
	[ID_VILLE] [int] NOT NULL,
	[ID_PAYS] [int] NOT NULL,
	[NOM_VILLE] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UTILISATEUR_BLOOM] ON 

INSERT [dbo].[UTILISATEUR_BLOOM] ([ID_UTILI], [NOM_UTIL], [MOTS_PASS_UTIL], [DATE_CREATION], [DATE_LAST_CNX], [N_TELE], [EMAIL], [Role]) VALUES (1, N'you', N'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAo7Lj91KrnUyFPjkU/YPVegAAAAACAAAAAAAQZgAAAAEAACAAAAAZuS1TwdJCbRrRIssVb2Rq4oS2D1UPoTpfe9Au7jfWwQAAAAAOgAAAAAIAACAAAAACZ32R/NElNK2+mAJv3s+Oyt+GbvKA8PN9Uk9Ns2u+uhAAAABKRNGfk/jdIXiNIU0XaCgWQAAAAKGSqummhNNTOKvdz5P8ALFwmvJXPR9gep7qefcUMvIH9yAdeLQzGTtcUN8EeQGVhh3Z8fx/WBO987FxTkM2sxU=', 1594813492260, 1594813492260, N'3213213212', N'uuuuu@ddd.df', 1)
INSERT [dbo].[UTILISATEUR_BLOOM] ([ID_UTILI], [NOM_UTIL], [MOTS_PASS_UTIL], [DATE_CREATION], [DATE_LAST_CNX], [N_TELE], [EMAIL], [Role]) VALUES (2, N'othman', N'AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAo7Lj91KrnUyFPjkU/YPVegAAAAACAAAAAAAQZgAAAAEAACAAAAC5fUCVj+VT49DiKEfd3pE+Y979Lme2lW86plj95mAWvAAAAAAOgAAAAAIAACAAAADqvgLCBp7kJFT+/GR5IF8vDkFyI1aqK6Cj5RsYbKPQtBAAAAD5DvpZYwdv1MgYlKN1leakQAAAAO+Id/COmoTTsyTFQW7zm/KulNGox4UvtQ5AbWFxqeNsVK38NUfWbZRKR47a+pwRHonmggUap22Hp2BLirtTq0A=', 1594814136192, 1594814465989, N'1234567890', N'othman@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[UTILISATEUR_BLOOM] OFF
/****** Object:  Index [ACTION_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ACTION_FK] ON [dbo].[ACTION]
(
	[ID_UTILI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ACTION2_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ACTION2_FK] ON [dbo].[ACTION]
(
	[ID_CONTRAT_G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AUTOMIBILE_RELATION_PERSON_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [AUTOMIBILE_RELATION_PERSON_FK] ON [dbo].[AUTOMIBILE_RELATION_PERSON]
(
	[ID_CONTRAT_AUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AUTOMIBILE_RELATION_PERSON2_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [AUTOMIBILE_RELATION_PERSON2_FK] ON [dbo].[AUTOMIBILE_RELATION_PERSON]
(
	[ID_PERSONNE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_AUTOMOBILE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[AUTOMOBILE] ADD  CONSTRAINT [PK_AUTOMOBILE] PRIMARY KEY NONCLUSTERED 
(
	[ID_CONTRAT_AUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ASSOCIATION_10_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ASSOCIATION_10_FK] ON [dbo].[AUTOMOBILE]
(
	[ID_VEH_ASSUREE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TYPE_AUTOMOBILE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [TYPE_AUTOMOBILE_FK] ON [dbo].[AUTOMOBILE]
(
	[ID_CONTRAT_G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_AUTRE_CONTRACT]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[AUTRE_CONTRACT] ADD  CONSTRAINT [PK_AUTRE_CONTRACT] PRIMARY KEY NONCLUSTERED 
(
	[ID_AUTRE_CONTRAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ASSOCIATION_24_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ASSOCIATION_24_FK] ON [dbo].[AUTRE_CONTRACT]
(
	[ID_COMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_COMPANGIE_ASSURANCE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[COMPANGIE_ASSURANCE] ADD  CONSTRAINT [PK_COMPANGIE_ASSURANCE] PRIMARY KEY NONCLUSTERED 
(
	[ID_COMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CONTRACT]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[CONTRACT] ADD  CONSTRAINT [PK_CONTRACT] PRIMARY KEY NONCLUSTERED 
(
	[ID_CONTRAT_G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [POUR_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [POUR_FK] ON [dbo].[CONTRACT]
(
	[ID_INTER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_GARANTIE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[GARANTIE] ADD  CONSTRAINT [PK_GARANTIE] PRIMARY KEY NONCLUSTERED 
(
	[ID_GARANTIE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GARANTIE_TYPE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [GARANTIE_TYPE_FK] ON [dbo].[GARANTIE]
(
	[ID_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GARANTIE_AUTOMIBILE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [GARANTIE_AUTOMIBILE_FK] ON [dbo].[GARANTIE_AUTOMIBILE]
(
	[ID_CONTRAT_AUTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [GARANTIE_AUTOMIBILE2_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [GARANTIE_AUTOMIBILE2_FK] ON [dbo].[GARANTIE_AUTOMIBILE]
(
	[ID_GARANTIE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_INTERMEDIAIRE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[INTERMEDIAIRE] ADD  CONSTRAINT [PK_INTERMEDIAIRE] PRIMARY KEY NONCLUSTERED 
(
	[ID_INTER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_MARQUE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[MARQUE] ADD  CONSTRAINT [PK_MARQUE] PRIMARY KEY NONCLUSTERED 
(
	[ID_MARQUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_MODEL]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[MODEL] ADD  CONSTRAINT [PK_MODEL] PRIMARY KEY NONCLUSTERED 
(
	[ID_MODEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MARQUE_MODEL_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [MARQUE_MODEL_FK] ON [dbo].[MODEL]
(
	[ID_MARQUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PAYS]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[PAYS] ADD  CONSTRAINT [PK_PAYS] PRIMARY KEY NONCLUSTERED 
(
	[ID_PAYS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PERSONNE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[PERSONNE] ADD  CONSTRAINT [PK_PERSONNE] PRIMARY KEY NONCLUSTERED 
(
	[ID_PERSONNE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ASSOCIATION_25_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ASSOCIATION_25_FK] ON [dbo].[PERSONNE]
(
	[ID_SOURCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDENTITE_PERSONE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [IDENTITE_PERSONE_FK] ON [dbo].[PERSONNE]
(
	[ID_TIDEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PERSON_PAYS_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [PERSON_PAYS_FK] ON [dbo].[PERSONNE]
(
	[ID_PAYS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [SEXE_PERSONE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [SEXE_PERSONE_FK] ON [dbo].[PERSONNE]
(
	[ID_SEXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [VILLE_PERSONNE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [VILLE_PERSONNE_FK] ON [dbo].[PERSONNE]
(
	[ID_VILLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_RC_SCOLAIRE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[RC_SCOLAIRE] ADD  CONSTRAINT [PK_RC_SCOLAIRE] PRIMARY KEY NONCLUSTERED 
(
	[ID_RC_SCOLAIRE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RE_SCOLAIRE_RELATION_PERSONE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [RE_SCOLAIRE_RELATION_PERSONE_FK] ON [dbo].[RC_SCOLAIRE]
(
	[ID_PERSONNE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TYPE_SCOLAIRE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [TYPE_SCOLAIRE_FK] ON [dbo].[RC_SCOLAIRE]
(
	[ID_CONTRAT_G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SETTING_UTILI]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[SETTING_UTILI] ADD  CONSTRAINT [PK_SETTING_UTILI] PRIMARY KEY NONCLUSTERED 
(
	[ID_SU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ASSOCIATION_2_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ASSOCIATION_2_FK] ON [dbo].[SETTING_UTILI]
(
	[ID_UTILI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SEXE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[SEXE] ADD  CONSTRAINT [PK_SEXE] PRIMARY KEY NONCLUSTERED 
(
	[ID_SEXE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SOURCE_PERSONNE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[SOURCE_PERSONNE] ADD  CONSTRAINT [PK_SOURCE_PERSONNE] PRIMARY KEY NONCLUSTERED 
(
	[ID_SOURCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ASSOCIATION_26_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ASSOCIATION_26_FK] ON [dbo].[SOURCE_PERSONNE]
(
	[ID_TYPE_SOURCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TOURISME]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[TOURISME] ADD  CONSTRAINT [PK_TOURISME] PRIMARY KEY NONCLUSTERED 
(
	[ID_TOURISME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ASSOCIATION_5_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ASSOCIATION_5_FK] ON [dbo].[TOURISME]
(
	[ID_AUTRE_CONTRAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TYPE_TOURISME_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [TYPE_TOURISME_FK] ON [dbo].[TOURISME]
(
	[ID_CONTRAT_G] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TOURISME_GARANTIE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [TOURISME_GARANTIE_FK] ON [dbo].[TOURISME_GARANTIE]
(
	[ID_TOURISME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TOURISME_GARANTIE2_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [TOURISME_GARANTIE2_FK] ON [dbo].[TOURISME_GARANTIE]
(
	[ID_GARANTIE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TOURISME_PERSONNE_RELATION_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [TOURISME_PERSONNE_RELATION_FK] ON [dbo].[TOURISME_PERSONNE_RELATION]
(
	[ID_TOURISME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TOURISME_PERSONNE_RELATION2_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [TOURISME_PERSONNE_RELATION2_FK] ON [dbo].[TOURISME_PERSONNE_RELATION]
(
	[ID_PERSONNE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TYPE_GARANTIE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[TYPE_GARANTIE] ADD  CONSTRAINT [PK_TYPE_GARANTIE] PRIMARY KEY NONCLUSTERED 
(
	[ID_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TYPE_IDENTITE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[TYPE_IDENTITE] ADD  CONSTRAINT [PK_TYPE_IDENTITE] PRIMARY KEY NONCLUSTERED 
(
	[ID_TIDEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TYPE_SOURCE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[TYPE_SOURCE] ADD  CONSTRAINT [PK_TYPE_SOURCE] PRIMARY KEY NONCLUSTERED 
(
	[ID_TYPE_SOURCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_UTILISATEUR_BLOOM]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[UTILISATEUR_BLOOM] ADD  CONSTRAINT [PK_UTILISATEUR_BLOOM] PRIMARY KEY NONCLUSTERED 
(
	[ID_UTILI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_VEHICULE_ASSUREE]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[VEHICULE_ASSUREE] ADD  CONSTRAINT [PK_VEHICULE_ASSUREE] PRIMARY KEY NONCLUSTERED 
(
	[ID_VEH_ASSUREE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MARQUE_VEHICULE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [MARQUE_VEHICULE_FK] ON [dbo].[VEHICULE_ASSUREE]
(
	[ID_MARQUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MODEL_VEHICULE_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [MODEL_VEHICULE_FK] ON [dbo].[VEHICULE_ASSUREE]
(
	[ID_MODEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_VILLES]    Script Date: 7/15/2020 1:49:10 PM ******/
ALTER TABLE [dbo].[VILLES] ADD  CONSTRAINT [PK_VILLES] PRIMARY KEY NONCLUSTERED 
(
	[ID_VILLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ASSOCIATION_18_FK]    Script Date: 7/15/2020 1:49:10 PM ******/
CREATE NONCLUSTERED INDEX [ASSOCIATION_18_FK] ON [dbo].[VILLES]
(
	[ID_PAYS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Lebra] SET  READ_WRITE 
GO
