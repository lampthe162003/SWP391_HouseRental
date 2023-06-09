USE [SWP391_HouseRentalSystem]
GO
ALTER TABLE [dbo].[Secure_Answers] DROP CONSTRAINT [FK_Secure_Answers_Secure_Questions]
GO
ALTER TABLE [dbo].[Post_Comments] DROP CONSTRAINT [FK_Post_Comments_Blog_Posts]
GO
ALTER TABLE [dbo].[Post_Comments] DROP CONSTRAINT [FK_Post_Comments_Account3]
GO
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [FK_Messages_Account1]
GO
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT [FK_Messages_Account]
GO
ALTER TABLE [dbo].[House_Ratings] DROP CONSTRAINT [FK_House_Ratings_House]
GO
ALTER TABLE [dbo].[House_Ratings] DROP CONSTRAINT [FK_House_Ratings_Account]
GO
ALTER TABLE [dbo].[House_Images] DROP CONSTRAINT [FK_House_Images_House]
GO
ALTER TABLE [dbo].[House_Details] DROP CONSTRAINT [FK_House_Details_House_Directions]
GO
ALTER TABLE [dbo].[House] DROP CONSTRAINT [FK_House_House_Details]
GO
ALTER TABLE [dbo].[House] DROP CONSTRAINT [FK_House_House_Category]
GO
ALTER TABLE [dbo].[House] DROP CONSTRAINT [FK_House_Districts]
GO
ALTER TABLE [dbo].[House] DROP CONSTRAINT [FK_House_Account]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_House]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Account_Sender]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Account_Receiver]
GO
ALTER TABLE [dbo].[Favourite_House] DROP CONSTRAINT [FK_Favourite_House_House]
GO
ALTER TABLE [dbo].[Favourite_House] DROP CONSTRAINT [FK_Favourite_House_Account]
GO
ALTER TABLE [dbo].[Blog_Posts] DROP CONSTRAINT [FK_Blog_Posts_Account]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Secure_Questions]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Secure_Answers]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Account_Role]
GO
/****** Object:  Table [dbo].[Secure_Questions]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Secure_Questions]') AND type in (N'U'))
DROP TABLE [dbo].[Secure_Questions]
GO
/****** Object:  Table [dbo].[Secure_Answers]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Secure_Answers]') AND type in (N'U'))
DROP TABLE [dbo].[Secure_Answers]
GO
/****** Object:  Table [dbo].[Post_Comments]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Post_Comments]') AND type in (N'U'))
DROP TABLE [dbo].[Post_Comments]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
DROP TABLE [dbo].[Messages]
GO
/****** Object:  Table [dbo].[House_Ratings]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[House_Ratings]') AND type in (N'U'))
DROP TABLE [dbo].[House_Ratings]
GO
/****** Object:  Table [dbo].[House_Images]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[House_Images]') AND type in (N'U'))
DROP TABLE [dbo].[House_Images]
GO
/****** Object:  Table [dbo].[House_Directions]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[House_Directions]') AND type in (N'U'))
DROP TABLE [dbo].[House_Directions]
GO
/****** Object:  Table [dbo].[House_Details]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[House_Details]') AND type in (N'U'))
DROP TABLE [dbo].[House_Details]
GO
/****** Object:  Table [dbo].[House_Category]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[House_Category]') AND type in (N'U'))
DROP TABLE [dbo].[House_Category]
GO
/****** Object:  Table [dbo].[House]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[House]') AND type in (N'U'))
DROP TABLE [dbo].[House]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Favourite_House]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Favourite_House]') AND type in (N'U'))
DROP TABLE [dbo].[Favourite_House]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Districts]') AND type in (N'U'))
DROP TABLE [dbo].[Districts]
GO
/****** Object:  Table [dbo].[Blog_Posts]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Blog_Posts]') AND type in (N'U'))
DROP TABLE [dbo].[Blog_Posts]
GO
/****** Object:  Table [dbo].[Account_Role]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account_Role]') AND type in (N'U'))
DROP TABLE [dbo].[Account_Role]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/1/2023 4:43:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [nchar](16) NOT NULL,
	[Phone_Number] [nchar](10) NULL,
	[Role_ID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Secure_Question_ID] [int] NULL,
	[Secure_Answer_ID] [int] NULL,
	[Profile_Picture] [text] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Role]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Role](
	[Id] [int] NOT NULL,
	[Role] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Account_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog_Posts]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Poster_ID] [int] NOT NULL,
	[Post_Time] [date] NULL,
	[Topic] [text] NULL,
	[Content] [text] NULL,
	[Like_Count] [int] NOT NULL,
	[Image] [text] NULL,
 CONSTRAINT [PK_Blog_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite_House]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite_House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
 CONSTRAINT [PK_Favourite_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender_ID] [int] NOT NULL,
	[Receiver_ID] [int] NOT NULL,
	[House_ID] [int] NOT NULL,
	[Feedback_Date] [date] NULL,
	[Content] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_Owner_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Price] [varchar](12) NULL,
	[District_ID] [int] NOT NULL,
	[Full_Address] [nvarchar](250) NOT NULL,
	[Description] [text] NOT NULL,
	[Rating] [float] NOT NULL,
	[Added_Date] [date] NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Category]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Category](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_House_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Details]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Details](
	[House_ID] [int] NOT NULL,
	[Number_Of_Bedrooms] [int] NOT NULL,
	[Number_Of_Bathrooms] [int] NOT NULL,
	[Area] [int] NOT NULL,
	[Pool] [int] NOT NULL,
	[House_Direction_ID] [int] NULL,
 CONSTRAINT [PK_House_Details] PRIMARY KEY CLUSTERED 
(
	[House_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Directions]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Directions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Direction] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_House_Directions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Images]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_ID] [int] NOT NULL,
	[Image] [text] NOT NULL,
 CONSTRAINT [PK_House_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_Ratings]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[House_ID] [int] NOT NULL,
	[Voter_ID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_House_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sender_ID] [int] NOT NULL,
	[Receiver_ID] [int] NOT NULL,
	[Sent_Date] [date] NULL,
	[Content] [nvarchar](200) NOT NULL,
	[Status] [bit] NOT NULL,
	[Deleted_By_Sender] [bit] NOT NULL,
	[Deleted_By_Receiver] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post_Comments]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post_ID] [int] NOT NULL,
	[Commenter_ID] [int] NOT NULL,
	[Comment_Date] [date] NULL,
	[Content] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Post_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secure_Answers]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secure_Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Secure_Question_ID] [int] NOT NULL,
	[Answer] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Secure_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Secure_Questions]    Script Date: 6/1/2023 4:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Secure_Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Secure_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (1, N'akkk', 1, N'123', N'a', N'111             ', N'55555     ', 2, 1, 2, 1, N'blogtest.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (2, N'hung', 1, N'hn', N'aaac@', N'123             ', N'03355588  ', 2, 1, 2, 1, N'blogtest2.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (5, N'Kelvin Tran', 1, N'hn', N'humgtmhe163748@fpt.edu.vn', N'113             ', N'7897999   ', 2, 0, 2, 3, N'blogtest.jpg')
INSERT [dbo].[Account] ([Id], [Fullname], [Gender], [Address], [Email], [Password], [Phone_Number], [Role_ID], [Status], [Secure_Question_ID], [Secure_Answer_ID], [Profile_Picture]) VALUES (6, N'Olong Tea', 1, N'hn', N'abcc@gmail.com', N'123             ', N'31241212  ', 2, 0, 1, 14, N'blogtest2.jpg')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (1, N'Admin')
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (2, N'Viewer')
INSERT [dbo].[Account_Role] ([Id], [Role]) VALUES (3, N'Owner')
GO
SET IDENTITY_INSERT [dbo].[Blog_Posts] ON 

INSERT [dbo].[Blog_Posts] ([Id], [Poster_ID], [Post_Time], [Topic], [Content], [Like_Count], [Image]) VALUES (21, 5, CAST(N'2023-06-01' AS Date), N'One area that has greatly benefited from technology is communication.', N'Education has also been transformed by technology. Online courses and e-learning platforms have made education accessible to a wider audience. Students can now learn at their own pace, accessing resources and materials anytime, anywhere. This has democratized education and provided opportunities for lifelong learning.', 0, N'listing-05.jpg')
INSERT [dbo].[Blog_Posts] ([Id], [Poster_ID], [Post_Time], [Topic], [Content], [Like_Count], [Image]) VALUES (22, 5, CAST(N'2023-06-01' AS Date), N'Home page: the starting page of the system', N'In school, I eagerly devoured literature and poetry, relishing in the beauty of language and the emotions it could evoke. I marveled at the works of renowned authors, their words weaving intricate tapestries of imagination and insight. The more I read, the more I yearned to craft my own narratives and share my thoughts with the world.

Writing became my sanctuary, a place where I could pour out my thoughts and emotions onto the page. Through my words, I discovered a voice that was uniquely mine. I experimented with different styles and genres, pushing the boundaries of my creativity.

Over time, my passion for writing evolved into a desire to connect with others through my words. I realized that language has the power to bridge gaps, to foster understanding and empathy. I wanted to use my writing to inspire, to provoke thought, and to spark meaningful conversations.', 0, N'listing-01.jpg')
SET IDENTITY_INSERT [dbo].[Blog_Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Districts] ON 

INSERT [dbo].[Districts] ([Id], [District]) VALUES (1, N'Ba Đình')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (2, N'Bắc Từ Liêm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (3, N'Cầu Giấy')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (4, N'Đống Đa')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (5, N'Gia Lâm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (6, N'Hà Đông')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (7, N'Hai Bà Trưng')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (8, N'Hoài Đức')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (9, N'Hoàn Kiếm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (10, N'Hoàng Mai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (11, N'Long Biên')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (12, N'Mê Linh')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (13, N'Mỹ Đức')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (14, N'Nam Từ Liêm')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (15, N'Phúc Thọ')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (16, N'Phú Xuyên')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (17, N'Quốc Oai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (18, N'Sóc Sơn')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (19, N'Sơn Tây')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (20, N'Tây Hồ')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (21, N'Thạch Thất')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (22, N'Thanh Oai')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (23, N'Thanh Trì')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (24, N'Thanh Xuân')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (25, N'Thường Tín')
INSERT [dbo].[Districts] ([Id], [District]) VALUES (26, N'Ứng Hoà')
SET IDENTITY_INSERT [dbo].[Districts] OFF
GO
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (1, N'Phòng trọ')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (2, N'Chung cư')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (3, N'Biệt thự')
INSERT [dbo].[House_Category] ([Id], [Category]) VALUES (4, N'Căn hộ')
GO
SET IDENTITY_INSERT [dbo].[House_Directions] ON 

INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (1, N'Đông')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (2, N'Tây')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (3, N'Nam')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (4, N'Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (5, N'Đông Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (6, N'Đông Nam')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (7, N'Tây Bắc')
INSERT [dbo].[House_Directions] ([Id], [Direction]) VALUES (8, N'Tây Nam')
SET IDENTITY_INSERT [dbo].[House_Directions] OFF
GO
SET IDENTITY_INSERT [dbo].[Post_Comments] ON 

INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (1, 21, 5, CAST(N'2023-06-01' AS Date), N'Good job')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (2, 21, 5, CAST(N'2023-06-01' AS Date), N'Good night')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (3, 21, 6, CAST(N'2023-06-01' AS Date), N'So beatifully')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (4, 21, 6, CAST(N'2023-06-01' AS Date), N'I like about this')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (5, 21, 6, CAST(N'2023-06-01' AS Date), N'Oh wow')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (6, 21, 6, CAST(N'2023-06-01' AS Date), N'Oh wow')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (7, 21, 6, CAST(N'2023-06-01' AS Date), N'Oh wow')
INSERT [dbo].[Post_Comments] ([Id], [Post_ID], [Commenter_ID], [Comment_Date], [Content]) VALUES (8, 21, 6, CAST(N'2023-06-01' AS Date), N'Wowowo')
SET IDENTITY_INSERT [dbo].[Post_Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Secure_Answers] ON 

INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (1, 2, N'Bóng đá')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (3, 2, N'Cầu lông')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (4, 2, N'Bóng chuyền')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (5, 2, N'Golf')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (6, 2, N'Tennis')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (7, 2, N'Bóng rổ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (8, 2, N'Bóng bàn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (9, 2, N'Bơi')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (10, 2, N'Cờ vua')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (11, 2, N'Cờ tướng')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (12, 2, N'Võ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (13, 1, N'Chơi thể thao')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (14, 1, N'Nấu ăn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (21, 1, N'Xem phim')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (22, 1, N'Chơi game')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (23, 1, N'Đi du lịch')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (24, 1, N'Đi mua sắm')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (25, 1, N'Nghe nhạc')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (26, 1, N'Đọc sách')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (27, 1, N'Thiền')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (28, 1, N'Viết nhật ký')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (29, 3, N'Bố')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (30, 3, N'Mẹ')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (31, 3, N'Anh trai')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (32, 3, N'Em trai')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (33, 3, N'Chị gái')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (34, 3, N'Em gái')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (35, 3, N'Ông ngoại')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (36, 3, N'Bà ngoại')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (37, 3, N'Ông nội')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (39, 3, N'Bà nội')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (40, 4, N'Bún chả')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (41, 4, N'Bánh cuốn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (42, 4, N'Cơm bụi')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (43, 4, N'Bún cá')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (44, 4, N'Cơm tấm')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (46, 4, N'Bún đậu')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (47, 4, N'Gỏi cuốn')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (48, 4, N'Cơm rang')
INSERT [dbo].[Secure_Answers] ([Id], [Secure_Question_ID], [Answer]) VALUES (49, 4, N'Chả lá lốt')
SET IDENTITY_INSERT [dbo].[Secure_Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Secure_Questions] ON 

INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (1, N'Sở thích của bạn là gì?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (2, N'Bạn thích môn thể thao nào?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (3, N'Người trong nhà bạn thích nhất là ai?')
INSERT [dbo].[Secure_Questions] ([Id], [Question]) VALUES (4, N'Bạn thích món gì nhất?')
SET IDENTITY_INSERT [dbo].[Secure_Questions] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Account_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Account_Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Account_Role]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Secure_Answers] FOREIGN KEY([Secure_Answer_ID])
REFERENCES [dbo].[Secure_Answers] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Secure_Answers]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Secure_Questions] FOREIGN KEY([Secure_Question_ID])
REFERENCES [dbo].[Secure_Questions] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Secure_Questions]
GO
ALTER TABLE [dbo].[Blog_Posts]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Posts_Account] FOREIGN KEY([Poster_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Blog_Posts] CHECK CONSTRAINT [FK_Blog_Posts_Account]
GO
ALTER TABLE [dbo].[Favourite_House]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_House_Account] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Favourite_House] CHECK CONSTRAINT [FK_Favourite_House_Account]
GO
ALTER TABLE [dbo].[Favourite_House]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_House_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[Favourite_House] CHECK CONSTRAINT [FK_Favourite_House_House]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Receiver] FOREIGN KEY([Receiver_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account_Receiver]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Sender] FOREIGN KEY([Sender_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account_Sender]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_House]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_Account] FOREIGN KEY([House_Owner_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_Account]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_Districts] FOREIGN KEY([District_ID])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_Districts]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_House_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[House_Category] ([Id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_House_Category]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_House_Details] FOREIGN KEY([Id])
REFERENCES [dbo].[House_Details] ([House_ID])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_House_Details]
GO
ALTER TABLE [dbo].[House_Details]  WITH CHECK ADD  CONSTRAINT [FK_House_Details_House_Directions] FOREIGN KEY([House_Direction_ID])
REFERENCES [dbo].[House_Directions] ([Id])
GO
ALTER TABLE [dbo].[House_Details] CHECK CONSTRAINT [FK_House_Details_House_Directions]
GO
ALTER TABLE [dbo].[House_Images]  WITH CHECK ADD  CONSTRAINT [FK_House_Images_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[House_Images] CHECK CONSTRAINT [FK_House_Images_House]
GO
ALTER TABLE [dbo].[House_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_House_Ratings_Account] FOREIGN KEY([Voter_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[House_Ratings] CHECK CONSTRAINT [FK_House_Ratings_Account]
GO
ALTER TABLE [dbo].[House_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_House_Ratings_House] FOREIGN KEY([House_ID])
REFERENCES [dbo].[House] ([Id])
GO
ALTER TABLE [dbo].[House_Ratings] CHECK CONSTRAINT [FK_House_Ratings_House]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account] FOREIGN KEY([Sender_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Account1] FOREIGN KEY([Receiver_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Account1]
GO
ALTER TABLE [dbo].[Post_Comments]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comments_Account3] FOREIGN KEY([Commenter_ID])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Post_Comments] CHECK CONSTRAINT [FK_Post_Comments_Account3]
GO
ALTER TABLE [dbo].[Post_Comments]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comments_Blog_Posts] FOREIGN KEY([Post_ID])
REFERENCES [dbo].[Blog_Posts] ([Id])
GO
ALTER TABLE [dbo].[Post_Comments] CHECK CONSTRAINT [FK_Post_Comments_Blog_Posts]
GO
ALTER TABLE [dbo].[Secure_Answers]  WITH CHECK ADD  CONSTRAINT [FK_Secure_Answers_Secure_Questions] FOREIGN KEY([Secure_Question_ID])
REFERENCES [dbo].[Secure_Questions] ([Id])
GO
ALTER TABLE [dbo].[Secure_Answers] CHECK CONSTRAINT [FK_Secure_Answers_Secure_Questions]
GO
