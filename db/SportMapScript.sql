USE [SportMapDB]
GO
/****** Object:  Table [dbo].[gameNews]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gameNews](
	[gameNewsId] [int] IDENTITY(1,1) NOT NULL,
	[gameNewsTitle] [varchar](255) NOT NULL,
	[gameNewsKeyWords] [varchar](50) NOT NULL,
	[gameNewsContent] [text] NOT NULL,
	[gameNewsAuthor] [varchar](16) NOT NULL,
	[gameNewsHitTimes] [int] NOT NULL,
	[gameNewsCreatedTime] [datetime] NOT NULL,
	[gameNewsEditTimes] [int] NOT NULL,
	[gameNewsPriority] [numeric](1, 0) NULL,
	[longitude] [float] NOT NULL,
	[latitude] [float] NOT NULL,
	[url] [nvarchar](100) NULL,
	[gameType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GAMENEWS] PRIMARY KEY NONCLUSTERED 
(
	[gameNewsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gameInfo]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gameInfo](
	[gameId] [int] NOT NULL,
	[gameType] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[gameNameA] [varchar](50) NOT NULL,
	[gameNameB] [varchar](50) NOT NULL,
	[gameTime] [datetime] NOT NULL,
	[gamestatus] [numeric](1, 0) NOT NULL,
	[gameLength] [int] NOT NULL,
	[gameResult] [numeric](1, 0) NOT NULL,
 CONSTRAINT [PK_GAMEINFO] PRIMARY KEY NONCLUSTERED 
(
	[gameId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[picture]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[picture](
	[pictureName] [varchar](25) NOT NULL,
	[pictureId] [int] NOT NULL,
	[pictureDescription] [varchar](100) NULL,
	[picturePath] [varchar](255) NOT NULL,
 CONSTRAINT [PK_PICTURE] PRIMARY KEY NONCLUSTERED 
(
	[pictureId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gifts]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gifts](
	[giftsId] [int] NOT NULL,
	[userId] [varchar](16) NULL,
	[giftsname] [varchar](25) NOT NULL,
	[giftsDescription] [varchar](100) NULL,
 CONSTRAINT [PK_GIFTS] PRIMARY KEY NONCLUSTERED 
(
	[giftsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[video]    Script Date: 11/28/2010 13:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[video](
	[videoId] [int] NOT NULL,
	[videoPath] [varchar](100) NOT NULL,
	[videoName] [varchar](50) NOT NULL,
	[videoDescription] [varchar](255) NULL,
 CONSTRAINT [PK_VIDEO] PRIMARY KEY NONCLUSTERED 
(
	[videoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 11/28/2010 13:18:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[userId] [varchar](16) NOT NULL,
	[pictureId] [int] NULL,
	[userName] [varchar](16) NULL,
	[userPwd] [varchar](16) NOT NULL,
	[userType] [numeric](1, 0) NOT NULL,
	[pwdProtectA] [text] NOT NULL,
	[pwdProtectQ] [text] NOT NULL,
	[userSex] [bit] NULL,
	[userBirthday] [datetime] NULL,
	[userConnectMsn] [varchar](255) NULL,
	[userConnectqq] [numeric](12, 0) NULL,
	[userPrefer] [text] NULL,
	[userLoginTimes] [int] NOT NULL,
	[userConnectPhone] [numeric](11, 0) NULL,
	[userSign] [text] NULL,
	[userConnectEmail] [varchar](255) NOT NULL,
	[lastLoginOutTime] [datetime] NOT NULL,
	[userLatitude] [float] NOT NULL,
	[userLongitude] [float] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统中的一般注册用户和系统管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'user'
GO
/****** Object:  Table [dbo].[quiz]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[quiz](
	[userId] [varchar](16) NOT NULL,
	[gameId] [int] NOT NULL,
	[money] [int] NOT NULL,
 CONSTRAINT [PK_QUIZ] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC,
	[gameId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gamenews_to_vedio]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gamenews_to_vedio](
	[videoId] [int] NOT NULL,
	[gameNewsId] [int] NOT NULL,
 CONSTRAINT [PK_GAMENEWS_TO_VEDIO] PRIMARY KEY NONCLUSTERED 
(
	[videoId] ASC,
	[gameNewsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gamenews_to_picture]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gamenews_to_picture](
	[pictureId] [int] NOT NULL,
	[gameNewsId] [int] NOT NULL,
 CONSTRAINT [PK_GAMENEWS_TO_PICTURE] PRIMARY KEY NONCLUSTERED 
(
	[pictureId] ASC,
	[gameNewsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 11/28/2010 13:18:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[commentId] [int] NOT NULL,
	[gameId] [int] NULL,
	[gameNewsId] [int] NULL,
	[commentTitle] [varchar](100) NULL,
	[commentContent] [text] NOT NULL,
	[commentTime] [datetime] NOT NULL,
	[commentType] [int] NOT NULL,
 CONSTRAINT [PK_COMMENT] PRIMARY KEY NONCLUSTERED 
(
	[commentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Check [CKC_MONEY_QUIZ]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[quiz]  WITH CHECK ADD  CONSTRAINT [CKC_MONEY_QUIZ] CHECK  (([money]>=(10)))
GO
ALTER TABLE [dbo].[quiz] CHECK CONSTRAINT [CKC_MONEY_QUIZ]
GO
/****** Object:  ForeignKey [FK_COMMENT_GAME_TO_C_GAMEINFO]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_COMMENT_GAME_TO_C_GAMEINFO] FOREIGN KEY([gameId])
REFERENCES [dbo].[gameInfo] ([gameId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_COMMENT_GAME_TO_C_GAMEINFO]
GO
/****** Object:  ForeignKey [FK_COMMENT_GAMENEWS__GAMENEWS]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_COMMENT_GAMENEWS__GAMENEWS] FOREIGN KEY([gameNewsId])
REFERENCES [dbo].[gameNews] ([gameNewsId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_COMMENT_GAMENEWS__GAMENEWS]
GO
/****** Object:  ForeignKey [FK_GAMENEWS_GAME_GAMENEWS]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[gamenews_to_picture]  WITH CHECK ADD  CONSTRAINT [FK_GAMENEWS_GAME_GAMENEWS] FOREIGN KEY([gameNewsId])
REFERENCES [dbo].[gameNews] ([gameNewsId])
GO
ALTER TABLE [dbo].[gamenews_to_picture] CHECK CONSTRAINT [FK_GAMENEWS_GAME_GAMENEWS]
GO
/****** Object:  ForeignKey [FK_GAMENEWS_GAMENEWS__PICTURE]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[gamenews_to_picture]  WITH CHECK ADD  CONSTRAINT [FK_GAMENEWS_GAMENEWS__PICTURE] FOREIGN KEY([pictureId])
REFERENCES [dbo].[picture] ([pictureId])
GO
ALTER TABLE [dbo].[gamenews_to_picture] CHECK CONSTRAINT [FK_GAMENEWS_GAMENEWS__PICTURE]
GO
/****** Object:  ForeignKey [FK_GAMENEWS_GAMENEWS__GAMENEWS]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[gamenews_to_vedio]  WITH CHECK ADD  CONSTRAINT [FK_GAMENEWS_GAMENEWS__GAMENEWS] FOREIGN KEY([gameNewsId])
REFERENCES [dbo].[gameNews] ([gameNewsId])
GO
ALTER TABLE [dbo].[gamenews_to_vedio] CHECK CONSTRAINT [FK_GAMENEWS_GAMENEWS__GAMENEWS]
GO
/****** Object:  ForeignKey [FK_GAMENEWS_GAMENEWS__VIDEO]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[gamenews_to_vedio]  WITH CHECK ADD  CONSTRAINT [FK_GAMENEWS_GAMENEWS__VIDEO] FOREIGN KEY([videoId])
REFERENCES [dbo].[video] ([videoId])
GO
ALTER TABLE [dbo].[gamenews_to_vedio] CHECK CONSTRAINT [FK_GAMENEWS_GAMENEWS__VIDEO]
GO
/****** Object:  ForeignKey [FK_QUIZ_QUIZ2_GAMEINFO]    Script Date: 11/28/2010 13:18:49 ******/
ALTER TABLE [dbo].[quiz]  WITH CHECK ADD  CONSTRAINT [FK_QUIZ_QUIZ2_GAMEINFO] FOREIGN KEY([gameId])
REFERENCES [dbo].[gameInfo] ([gameId])
GO
ALTER TABLE [dbo].[quiz] CHECK CONSTRAINT [FK_QUIZ_QUIZ2_GAMEINFO]
GO
/****** Object:  ForeignKey [FK_USER_USER_OWN__PICTURE]    Script Date: 11/28/2010 13:18:50 ******/
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_USER_USER_OWN__PICTURE] FOREIGN KEY([pictureId])
REFERENCES [dbo].[picture] ([pictureId])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_USER_USER_OWN__PICTURE]
GO
