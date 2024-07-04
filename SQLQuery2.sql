USE [master]
GO
/****** Object:  Database [Bookstore]    Script Date: 03/07/2024 9:39:24 PM ******/
CREATE DATABASE [Bookstore]
 
USE [Bookstore]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/07/2024 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/07/2024 9:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[image] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'MANGA')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'NOVEL')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'VĂN HỌC')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (1, N'In Therapy (Divã)', N'http://dummyimage.com/203x148.png/cc0000/ffffff', 1, 67, N'Goldenrod', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (2, N'Cameraman''s Revenge, The (Mest kinematograficheskogo operatora)', N'http://dummyimage.com/242x100.png/5fa2dd/ffffff', 94, 41, N'Fuscia', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (3, N'Black Sleep, The', N'http://dummyimage.com/249x179.png/dddddd/000000', 73, 89, N'Goldenrod', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (4, N'Thing: Terror Takes Shape, The', N'http://dummyimage.com/127x187.png/dddddd/000000', 92, 17, N'Puce', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (6, N'Crimson Gold (Talaye sorgh)', N'http://dummyimage.com/149x127.png/5fa2dd/ffffff', 42, 17, N'Khaki', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (7, N'Washington Heights', N'http://dummyimage.com/175x244.png/cc0000/ffffff', 89, 5, N'Maroon', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (8, N'Ismael', N'http://dummyimage.com/120x236.png/dddddd/000000', 76, 59, N'Puce', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (9, N'20 Feet from Stardom (Twenty Feet from Stardom)', N'http://dummyimage.com/152x176.png/5fa2dd/ffffff', 49, 93, N'Orange', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (10, N'Between the Folds', N'http://dummyimage.com/199x145.png/cc0000/ffffff', 16, 22, N'Aquamarine', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (12, N'Prowler, The (a.k.a. Rosemary''s Killer) (a.k.a. The Graduation)', N'http://dummyimage.com/190x199.png/cc0000/ffffff', 97, 77, N'Indigo', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (13, N'Kogel mogel', N'http://dummyimage.com/144x128.png/5fa2dd/ffffff', 98, 84, N'Red', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (14, N'Jimmy Rosenberg: The Father, the Son & the Talent', N'http://dummyimage.com/151x216.png/ff4444/ffffff', 37, 31, N'Puce', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (15, N'Naked', N'http://dummyimage.com/120x141.png/ff4444/ffffff', 3, 55, N'Goldenrod', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (16, N'War, Inc.', N'http://dummyimage.com/156x107.png/dddddd/000000', 72, 1, N'Indigo', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (17, N'State of Emergency', N'http://dummyimage.com/134x119.png/ff4444/ffffff', 78, 81, N'Turquoise', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (18, N'Throw Momma from the Train', N'http://dummyimage.com/159x243.png/ff4444/ffffff', 51, 88, N'Goldenrod', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (19, N'Call Me Madam', N'http://dummyimage.com/216x165.png/ff4444/ffffff', 39, 97, N'Pink', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (20, N'How to Make an American Quilt', N'http://dummyimage.com/239x172.png/cc0000/ffffff', 70, 50, N'Purple', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (21, N'Aglaya', N'http://dummyimage.com/148x130.png/ff4444/ffffff', 5, 75, N'Crimson', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (22, N'Black and White', N'http://dummyimage.com/123x143.png/dddddd/000000', 87, 47, N'Maroon', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (23, N'Krays, The', N'http://dummyimage.com/105x123.png/cc0000/ffffff', 22, 49, N'Maroon', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (25, N'Haunted World of Edward D. Wood Jr., The', N'http://dummyimage.com/119x223.png/dddddd/000000', 70, 20, N'Mauv', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (26, N'IMAX: Hubble 3D', N'http://dummyimage.com/146x190.png/cc0000/ffffff', 58, 85, N'Teal', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (27, N'Shanghai Knights', N'http://dummyimage.com/147x197.png/ff4444/ffffff', 45, 79, N'Green', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (28, N'Norwegian Wood (Noruwei no mori)', N'http://dummyimage.com/182x173.png/dddddd/000000', 63, 1, N'Yellow', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (29, N'Stealing Time (a.k.a. Rennie''s Landing)', N'http://dummyimage.com/126x166.png/cc0000/ffffff', 48, 26, N'Indigo', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (31, N'Monster', N'http://dummyimage.com/155x106.png/cc0000/ffffff', 64, 93, N'Puce', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (32, N'Way Back, The', N'http://dummyimage.com/184x203.png/5fa2dd/ffffff', 67, 15, N'Teal', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (34, N'Children of the Secret State', N'http://dummyimage.com/105x216.png/ff4444/ffffff', 70, 42, N'Violet', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (36, N'Cheers for Miss Bishop', N'http://dummyimage.com/215x156.png/5fa2dd/ffffff', 71, 41, N'Blue', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (37, N'Common Wealth (Comunidad, La)', N'http://dummyimage.com/113x206.png/ff4444/ffffff', 46, 19, N'Aquamarine', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (40, N'Professional, The (Le professionnel)', N'http://dummyimage.com/117x113.png/cc0000/ffffff', 11, 23, N'Aquamarine', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (42, N'Assassination of Richard Nixon, The', N'http://dummyimage.com/183x176.png/ff4444/ffffff', 76, 100, N'Indigo', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (46, N'F/X2 (a.k.a. F/X 2 - The Deadly Art of Illusion)', N'http://dummyimage.com/144x193.png/dddddd/000000', 15, 13, N'Crimson', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (48, N'First Love', N'http://dummyimage.com/171x245.png/dddddd/000000', 73, 75, N'Indigo', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (49, N'7 Dwarves: The Forest Is Not Enough', N'http://dummyimage.com/155x237.png/5fa2dd/ffffff', 97, 16, N'Khaki', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [category_id]) VALUES (50, N'Kleines Arschloch - Der Film', N'http://dummyimage.com/185x172.png/cc0000/ffffff', 33, 41, N'Orange', 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [Bookstore] SET  READ_WRITE 
GO
