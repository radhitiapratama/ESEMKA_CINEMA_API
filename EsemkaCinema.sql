CREATE DATABASE [EsemkaCinema] CONTAINMENT = NONE WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
	ALTER DATABASE [EsemkaCinema]
SET
	COMPATIBILITY_LEVEL = 150
GO
	IF (
		1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled')
	) begin EXEC [EsemkaCinema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
	ALTER DATABASE [EsemkaCinema]
SET
	ANSI_NULL_DEFAULT OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	ANSI_NULLS OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	ANSI_PADDING OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	ANSI_WARNINGS OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	ARITHABORT OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	AUTO_CLOSE OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	AUTO_SHRINK OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	AUTO_UPDATE_STATISTICS ON
GO
	ALTER DATABASE [EsemkaCinema]
SET
	CURSOR_CLOSE_ON_COMMIT OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	CURSOR_DEFAULT GLOBAL
GO
	ALTER DATABASE [EsemkaCinema]
SET
	CONCAT_NULL_YIELDS_NULL OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	NUMERIC_ROUNDABORT OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	QUOTED_IDENTIFIER OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	RECURSIVE_TRIGGERS OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	DISABLE_BROKER
GO
	ALTER DATABASE [EsemkaCinema]
SET
	AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	DATE_CORRELATION_OPTIMIZATION OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	TRUSTWORTHY OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	ALLOW_SNAPSHOT_ISOLATION OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	PARAMETERIZATION SIMPLE
GO
	ALTER DATABASE [EsemkaCinema]
SET
	READ_COMMITTED_SNAPSHOT OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	HONOR_BROKER_PRIORITY OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	RECOVERY SIMPLE
GO
	ALTER DATABASE [EsemkaCinema]
SET
	MULTI_USER
GO
	ALTER DATABASE [EsemkaCinema]
SET
	PAGE_VERIFY CHECKSUM
GO
	ALTER DATABASE [EsemkaCinema]
SET
	DB_CHAINING OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	FILESTREAM(NON_TRANSACTED_ACCESS = OFF)
GO
	ALTER DATABASE [EsemkaCinema]
SET
	TARGET_RECOVERY_TIME = 60 SECONDS
GO
	ALTER DATABASE [EsemkaCinema]
SET
	DELAYED_DURABILITY = DISABLED
GO
	ALTER DATABASE [EsemkaCinema]
SET
	ACCELERATED_DATABASE_RECOVERY = OFF
GO
	ALTER DATABASE [EsemkaCinema]
SET
	QUERY_STORE = OFF
GO
	USE [EsemkaCinema]
GO
	/****** Object:  Table [dbo].[Movie]    Script Date: 01/01/2024 00:25:40 ******/
SET
	ANSI_NULLS ON
GO
SET
	QUOTED_IDENTIFIER ON
GO
	CREATE TABLE [dbo].[Movie](
		[ID] [int] NOT NULL IDENTITY,
		[Title] [varchar](255) NOT NULL,
		[ReleaseDate] [date] NOT NULL,
		[TicketPrice] [float] NOT NULL,
		[Genre] [varchar](100) NOT NULL,
		CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED ([ID] ASC) WITH (
			PAD_INDEX = OFF,
			STATISTICS_NORECOMPUTE = OFF,
			IGNORE_DUP_KEY = OFF,
			ALLOW_ROW_LOCKS = ON,
			ALLOW_PAGE_LOCKS = ON,
			OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
		) ON [PRIMARY]
	) ON [PRIMARY]
GO
SET
	IDENTITY_INSERT [dbo].[Movie] ON
GO
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		1,
		'Little Colonel, The',
		CAST(N'2023-07-12' AS Date),
		254233,
		'Children|Comedy|Crime|Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		2,
		'City Dark, The',
		CAST(N'2023-11-22' AS Date),
		243983,
		'Documentary'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		3,
		'Plutonium Circus',
		CAST(N'2023-11-12' AS Date),
		63834,
		'Documentary'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		4,
		'Woman That Dreamed About a Man, The (Kvinden der drømte om en mand)',
		CAST(N'2023-06-08' AS Date),
		140865,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		5,
		'Bang Bang',
		CAST(N'2023-05-22' AS Date),
		121019,
		'Comedy'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		6,
		'Tale of Ham and Passion, A (Jamón, Jamón)',
		CAST(N'2023-11-19' AS Date),
		209688,
		'Comedy|Drama|Romance'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		7,
		'Little Man',
		CAST(N'2023-05-08' AS Date),
		108557,
		'Comedy'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		8,
		'Beau Geste',
		CAST(N'2023-02-17' AS Date),
		204943,
		'Action|Adventure|Drama|War'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		9,
		'Curious George',
		CAST(N'2023-07-27' AS Date),
		263452,
		'Adventure|Animation|Children|Comedy'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		10,
		'For Sale (À Vendre)',
		CAST(N'2023-08-07' AS Date),
		107968,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		11,
		'Country Life',
		CAST(N'2023-07-07' AS Date),
		281451,
		'Drama|Romance'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		12,
		'Winnie the Pooh and the Honey Tree',
		CAST(N'2023-11-23' AS Date),
		317952,
		'Animation|Children'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		13,
		'Homecoming',
		CAST(N'2023-10-13' AS Date),
		190602,
		'Drama|Thriller'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		14,
		'Watch Out, We are Mad (...Altrimenti ci arrabbiamo!)',
		CAST(N'2023-07-31' AS Date),
		266834,
		'Action|Comedy'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		15,
		'My Son, My Son, What Have Ye Done',
		CAST(N'2023-03-13' AS Date),
		348125,
		'Drama|Horror'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		16,
		'The Karen Carpenter Story',
		CAST(N'2023-10-30' AS Date),
		45298,
		'(no genres listed)'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		17,
		'Vivacious Lady',
		CAST(N'2023-01-06' AS Date),
		149076,
		'Comedy|Romance'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		18,
		'Killer Force',
		CAST(N'2023-06-03' AS Date),
		326427,
		'Action|Thriller'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		19,
		'Day a Pig Fell Into the Well, The (Daijiga umule pajinnal)',
		CAST(N'2023-03-11' AS Date),
		192735,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		20,
		'Unconscious (Inconscientes)',
		CAST(N'2023-09-22' AS Date),
		89959,
		'Comedy|Mystery|Romance'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		21,
		'I Melt with You',
		CAST(N'2023-07-04' AS Date),
		173365,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		22,
		'House I Live In, The',
		CAST(N'2023-07-17' AS Date),
		97149,
		'Documentary'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		23,
		'Suit for Wedding, A (a.k.a. The Wedding Suit) (Lebassi Baraye Arossi)',
		CAST(N'2023-01-10' AS Date),
		309233,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		24,
		'Alien Raiders',
		CAST(N'2023-12-11' AS Date),
		145804,
		'Mystery|Sci-Fi|Thriller'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		25,
		'Four Eyes and Six-Guns',
		CAST(N'2023-09-02' AS Date),
		145329,
		'Comedy|Western'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		26,
		'Kickboxer',
		CAST(N'2023-10-15' AS Date),
		158886,
		'Action'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		27,
		'Beer League',
		CAST(N'2023-02-07' AS Date),
		217752,
		'Comedy'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		28,
		'Zeitgeist: The Movie',
		CAST(N'2023-07-06' AS Date),
		263780,
		'Documentary|War'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		29,
		'Big Blonde, The (Iso vaalee)',
		CAST(N'2023-08-03' AS Date),
		349814,
		'Comedy|Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		30,
		'Car 54, Where Are You?',
		CAST(N'2023-01-30' AS Date),
		193347,
		'Comedy'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		31,
		'Rainbow Valley',
		CAST(N'2023-11-20' AS Date),
		287472,
		'Action|Romance|Western'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		32,
		'Bannen Way, The',
		CAST(N'2023-12-18' AS Date),
		255044,
		'Action|Comedy|Crime|Thriller'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		33,
		'Man You Had in Mind, The',
		CAST(N'2023-06-21' AS Date),
		228343,
		'Documentary'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		34,
		'Tennessee',
		CAST(N'2023-11-16' AS Date),
		95012,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		35,
		'Redemption of General Butt Naked, The',
		CAST(N'2023-04-25' AS Date),
		226712,
		'Documentary|Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		36,
		'Project A 2 (A gai wak juk jap)',
		CAST(N'2023-11-17' AS Date),
		266747,
		'Action|Comedy|Crime'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		37,
		'My Kid Could Paint That',
		CAST(N'2023-06-20' AS Date),
		71246,
		'Documentary'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		38,
		'Tarzan New York Adventure',
		CAST(N'2023-08-11' AS Date),
		243974,
		'Action|Adventure'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		39,
		'Clara and Me (Clara et moi)',
		CAST(N'2023-01-24' AS Date),
		131656,
		'Drama|Romance'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		40,
		'Mona and the Time of Burning Love (Mona ja palavan rakkauden aika))',
		CAST(N'2023-09-22' AS Date),
		319943,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		41,
		'Zone, The (La Zona)',
		CAST(N'2023-09-20' AS Date),
		303466,
		'Drama|Thriller'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		42,
		'North Shore',
		CAST(N'2023-07-17' AS Date),
		198079,
		'Drama|Romance'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		43,
		'Cochochi',
		CAST(N'2023-05-15' AS Date),
		65778,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		44,
		'Fish Called Wanda, A',
		CAST(N'2023-03-08' AS Date),
		76219,
		'Comedy|Crime'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		45,
		'Theatre Bizarre, The',
		CAST(N'2023-09-12' AS Date),
		117080,
		'Horror'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		46,
		'Paperman',
		CAST(N'2023-03-30' AS Date),
		116603,
		'Animation|Comedy|Romance'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		47,
		'Dance Party, USA',
		CAST(N'2023-09-25' AS Date),
		278570,
		'Drama'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		48,
		'Round Up, The (La Rafle)',
		CAST(N'2023-01-08' AS Date),
		159075,
		'Drama|War'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		49,
		'Babymakers, The',
		CAST(N'2023-11-24' AS Date),
		337782,
		'Adventure|Comedy'
	)
INSERT
	[dbo].[Movie] (
		[ID],
		[Title],
		[ReleaseDate],
		[TicketPrice],
		[Genre]
	)
VALUES
	(
		50,
		'Urban Menace',
		CAST(N'2023-03-11' AS Date),
		27940,
		'Action|Horror'
	)
GO
	USE [master]
GO
	ALTER DATABASE [EsemkaCinema]
SET
	READ_WRITE
GO