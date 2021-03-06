USE [SportMapDB]
GO
/****** Object:  Table [dbo].[gifts]    Script Date: 12/01/2010 23:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gifts](
	[giftsId] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[gameNews]    Script Date: 12/01/2010 23:32:23 ******/
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
/****** Object:  Table [dbo].[gameInfo]    Script Date: 12/01/2010 23:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gameInfo](
	[gameId] [int] IDENTITY(1,1) NOT NULL,
	[gameType] [int] NOT NULL,
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
/****** Object:  Table [dbo].[user]    Script Date: 12/01/2010 23:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[userId] [varchar](16) NOT NULL,
	[imgPath] [varchar](max) NULL,
	[userName] [varchar](16) NULL,
	[userPwd] [varchar](16) NOT NULL,
	[userType] [numeric](1, 0) NOT NULL,
	[pwdProtectA] [text] NOT NULL,
	[pwdProtectQ] [text] NOT NULL,
	[userSex] [bit] NULL,
	[userBirthday] [datetime2](7) NULL,
	[userConnectMsn] [varchar](255) NULL,
	[userConnectqq] [numeric](12, 0) NULL,
	[userPrefer] [text] NULL,
	[userLoginTimes] [int] NOT NULL,
	[userConnectPhone] [numeric](11, 0) NULL,
	[userSign] [text] NULL,
	[userConnectEmail] [varchar](255) NOT NULL,
	[lastLoginOutTime] [datetime2](7) NOT NULL,
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
/****** Object:  Table [dbo].[quiz]    Script Date: 12/01/2010 23:32:23 ******/
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
/****** Object:  Table [dbo].[friend]    Script Date: 12/01/2010 23:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[friend](
	[userA] [varchar](16) NOT NULL,
	[userB] [varchar](16) NOT NULL,
 CONSTRAINT [PK_friend] PRIMARY KEY CLUSTERED 
(
	[userA] ASC,
	[userB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/01/2010 23:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[commentId] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Check [CK_FRIEND]    Script Date: 12/01/2010 23:32:23 ******/
ALTER TABLE [dbo].[friend]  WITH CHECK ADD  CONSTRAINT [CK_FRIEND] CHECK  (([userA]<>[userB]))
GO
ALTER TABLE [dbo].[friend] CHECK CONSTRAINT [CK_FRIEND]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检查user1和use2不能相等' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'friend', @level2type=N'CONSTRAINT',@level2name=N'CK_FRIEND'
GO
/****** Object:  Check [CKC_MONEY_QUIZ]    Script Date: 12/01/2010 23:32:23 ******/
ALTER TABLE [dbo].[quiz]  WITH CHECK ADD  CONSTRAINT [CKC_MONEY_QUIZ] CHECK  (([money]>=(10)))
GO
ALTER TABLE [dbo].[quiz] CHECK CONSTRAINT [CKC_MONEY_QUIZ]
GO
/****** Object:  ForeignKey [FK_COMMENT_GAME_TO_C_GAMEINFO]    Script Date: 12/01/2010 23:32:23 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_COMMENT_GAME_TO_C_GAMEINFO] FOREIGN KEY([gameId])
REFERENCES [dbo].[gameInfo] ([gameId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_COMMENT_GAME_TO_C_GAMEINFO]
GO
/****** Object:  ForeignKey [FK_comment_gameNews]    Script Date: 12/01/2010 23:32:23 ******/
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_gameNews] FOREIGN KEY([gameNewsId])
REFERENCES [dbo].[gameNews] ([gameNewsId])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_gameNews]
GO
/****** Object:  ForeignKey [FK_friend_user]    Script Date: 12/01/2010 23:32:23 ******/
ALTER TABLE [dbo].[friend]  WITH CHECK ADD  CONSTRAINT [FK_friend_user] FOREIGN KEY([userA])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[friend] CHECK CONSTRAINT [FK_friend_user]
GO
/****** Object:  ForeignKey [FK_friend_user1]    Script Date: 12/01/2010 23:32:23 ******/
ALTER TABLE [dbo].[friend]  WITH CHECK ADD  CONSTRAINT [FK_friend_user1] FOREIGN KEY([userB])
REFERENCES [dbo].[user] ([userId])
GO
ALTER TABLE [dbo].[friend] CHECK CONSTRAINT [FK_friend_user1]
GO
/****** Object:  ForeignKey [FK_QUIZ_QUIZ2_GAMEINFO]    Script Date: 12/01/2010 23:32:23 ******/
ALTER TABLE [dbo].[quiz]  WITH CHECK ADD  CONSTRAINT [FK_QUIZ_QUIZ2_GAMEINFO] FOREIGN KEY([gameId])
REFERENCES [dbo].[gameInfo] ([gameId])
GO
ALTER TABLE [dbo].[quiz] CHECK CONSTRAINT [FK_QUIZ_QUIZ2_GAMEINFO]
GO
