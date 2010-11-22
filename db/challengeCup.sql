/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     2010/11/21 20:40:52                          */
/*==============================================================*/
use challenge;

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('comment') and o.name = 'FK_COMMENT_GAME_TO_C_GAMEINFO')
alter table comment
   drop constraint FK_COMMENT_GAME_TO_C_GAMEINFO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('comment') and o.name = 'FK_COMMENT_GAMENEWS__GAMENEWS')
alter table comment
   drop constraint FK_COMMENT_GAMENEWS__GAMENEWS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameInfo') and o.name = 'FK_GAMEINFO_GAME_TO_B_GAMEBIGC')
alter table gameInfo
   drop constraint FK_GAMEINFO_GAME_TO_B_GAMEBIGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameInfo') and o.name = 'FK_GAMEINFO_GAME_TO_S_GAMESMAL')
alter table gameInfo
   drop constraint FK_GAMEINFO_GAME_TO_S_GAMESMAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameInfo') and o.name = 'FK_GAMEINFO_GAME_TO_S_SPECIALG')
alter table gameInfo
   drop constraint FK_GAMEINFO_GAME_TO_S_SPECIALG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameInfo') and o.name = 'FK_GAMEINFO_LOCATION__LOCATION')
alter table gameInfo
   drop constraint FK_GAMEINFO_LOCATION__LOCATION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameNews') and o.name = 'FK_GAMENEWS_GAMENEWS__GAMEBIGC')
alter table gameNews
   drop constraint FK_GAMENEWS_GAMENEWS__GAMEBIGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameNews') and o.name = 'FK_GAMENEWS_GAMENEWS__SPECIALG')
alter table gameNews
   drop constraint FK_GAMENEWS_GAMENEWS__SPECIALG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameNews') and o.name = 'FK_GAMENEWS_LOCATION__LOCATION')
alter table gameNews
   drop constraint FK_GAMENEWS_LOCATION__LOCATION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameNews') and o.name = 'FK_GAMENEWS_USER_OWN__USER')
alter table gameNews
   drop constraint FK_GAMENEWS_USER_OWN__USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gameSmallClass') and o.name = 'FK_GAMESMAL_GAMENEWS__GAMENEWS')
alter table gameSmallClass
   drop constraint FK_GAMESMAL_GAMENEWS__GAMENEWS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gamenews_to_picture') and o.name = 'FK_GAMENEWS_GAME_GAMENEWS')
alter table gamenews_to_picture
   drop constraint FK_GAMENEWS_GAME_GAMENEWS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gamenews_to_picture') and o.name = 'FK_GAMENEWS_GAMENEWS__PICTURE')
alter table gamenews_to_picture
   drop constraint FK_GAMENEWS_GAMENEWS__PICTURE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gamenews_to_vedio') and o.name = 'FK_GAMENEWS_GAMENEWS__VIDEO')
alter table gamenews_to_vedio
   drop constraint FK_GAMENEWS_GAMENEWS__VIDEO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gamenews_to_vedio') and o.name = 'FK_GAMENEWS_GAMENEWS__GAMENEWS')
alter table gamenews_to_vedio
   drop constraint FK_GAMENEWS_GAMENEWS__GAMENEWS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('gifts') and o.name = 'FK_GIFTS_USER_ACQU_USER')
alter table gifts
   drop constraint FK_GIFTS_USER_ACQU_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('quiz') and o.name = 'FK_QUIZ_QUIZ_USER')
alter table quiz
   drop constraint FK_QUIZ_QUIZ_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('quiz') and o.name = 'FK_QUIZ_QUIZ2_GAMEINFO')
alter table quiz
   drop constraint FK_QUIZ_QUIZ2_GAMEINFO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"user"') and o.name = 'FK_USER_USER_OWN__LOCATION')
alter table "user"
   drop constraint FK_USER_USER_OWN__LOCATION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"user"') and o.name = 'FK_USER_USER_OWN__PICTURE')
alter table "user"
   drop constraint FK_USER_USER_OWN__PICTURE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Location')
            and   type = 'U')
   drop table Location
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('comment')
            and   name  = 'game_to_comment_FK'
            and   indid > 0
            and   indid < 255)
   drop index comment.game_to_comment_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('comment')
            and   name  = 'gamenews_to_comment_FK'
            and   indid > 0
            and   indid < 255)
   drop index comment.gamenews_to_comment_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('comment')
            and   type = 'U')
   drop table comment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gameBigClass')
            and   type = 'U')
   drop table gameBigClass
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameInfo')
            and   name  = 'game_to_special_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameInfo.game_to_special_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameInfo')
            and   name  = 'game_to_smallclass_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameInfo.game_to_smallclass_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameInfo')
            and   name  = 'game_to_bigclass_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameInfo.game_to_bigclass_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameInfo')
            and   name  = 'location_to_game_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameInfo.location_to_game_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gameInfo')
            and   type = 'U')
   drop table gameInfo
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameNews')
            and   name  = 'gamenews_to_special_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameNews.gamenews_to_special_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameNews')
            and   name  = 'gamenews_to_bigclass_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameNews.gamenews_to_bigclass_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameNews')
            and   name  = 'location_to_gamenews_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameNews.location_to_gamenews_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameNews')
            and   name  = 'user_own_gameNews_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameNews.user_own_gameNews_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gameNews')
            and   type = 'U')
   drop table gameNews
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gameSmallClass')
            and   name  = 'gamenews_to_smallclass_FK'
            and   indid > 0
            and   indid < 255)
   drop index gameSmallClass.gamenews_to_smallclass_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gameSmallClass')
            and   type = 'U')
   drop table gameSmallClass
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gamenews_to_picture')
            and   name  = 'game_FK'
            and   indid > 0
            and   indid < 255)
   drop index gamenews_to_picture.game_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gamenews_to_picture')
            and   name  = 'gamenews_to_picture_FK'
            and   indid > 0
            and   indid < 255)
   drop index gamenews_to_picture.gamenews_to_picture_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gamenews_to_picture')
            and   type = 'U')
   drop table gamenews_to_picture
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gamenews_to_vedio')
            and   name  = 'gamenews_to_vedio2_FK'
            and   indid > 0
            and   indid < 255)
   drop index gamenews_to_vedio.gamenews_to_vedio2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gamenews_to_vedio')
            and   name  = 'gamenews_to_vedio_FK'
            and   indid > 0
            and   indid < 255)
   drop index gamenews_to_vedio.gamenews_to_vedio_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gamenews_to_vedio')
            and   type = 'U')
   drop table gamenews_to_vedio
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('gifts')
            and   name  = 'user_acquire_gifts_FK'
            and   indid > 0
            and   indid < 255)
   drop index gifts.user_acquire_gifts_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('gifts')
            and   type = 'U')
   drop table gifts
go

if exists (select 1
            from  sysobjects
           where  id = object_id('picture')
            and   type = 'U')
   drop table picture
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('quiz')
            and   name  = 'quiz2_FK'
            and   indid > 0
            and   indid < 255)
   drop index quiz.quiz2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('quiz')
            and   name  = 'quiz_FK'
            and   indid > 0
            and   indid < 255)
   drop index quiz.quiz_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('quiz')
            and   type = 'U')
   drop table quiz
go

if exists (select 1
            from  sysobjects
           where  id = object_id('specialGameClass')
            and   type = 'U')
   drop table specialGameClass
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"user"')
            and   name  = 'user_own_picture_FK'
            and   indid > 0
            and   indid < 255)
   drop index "user".user_own_picture_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"user"')
            and   name  = 'user_own_location_FK'
            and   indid > 0
            and   indid < 255)
   drop index "user".user_own_location_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"user"')
            and   type = 'U')
   drop table "user"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('video')
            and   type = 'U')
   drop table video
go

/*==============================================================*/
/* Table: Location                                              */
/*==============================================================*/
create table Location (
   LocationId           int                  not null,
   LocationLongitude    decimal(6,6)         not null,
   LocaitonLatitude     decimal(6,6)         not null,
   constraint PK_LOCATION primary key nonclustered (LocationId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '记录一个地点的经纬度坐标',
   'user', @CurrentUser, 'table', 'Location'
go

/*==============================================================*/
/* Table: comment                                               */
/*==============================================================*/
create table comment (
   commentId            int                  not null,
   gameId               int                  null,
   gameNewsId           int                  null,
   commentTitle         varchar(100)         null,
   commentContent       text                 not null,
   commentTime          datetime             not null,
   commentType          int                  not null,
   constraint PK_COMMENT primary key nonclustered (commentId)
)
go

/*==============================================================*/
/* Index: gamenews_to_comment_FK                                */
/*==============================================================*/
create index gamenews_to_comment_FK on comment (
gameNewsId ASC
)
go

/*==============================================================*/
/* Index: game_to_comment_FK                                    */
/*==============================================================*/
create index game_to_comment_FK on comment (
gameId ASC
)
go

/*==============================================================*/
/* Table: gameBigClass                                          */
/*==============================================================*/
create table gameBigClass (
   gameBigClassId       int                  not null,
   gameBigClassName     varchar(25)          not null,
   constraint PK_GAMEBIGCLASS primary key nonclustered (gameBigClassId)
)
go

/*==============================================================*/
/* Table: gameInfo                                              */
/*==============================================================*/
create table gameInfo (
   gameId               int                  not null,
   gameBigClassId       int                  not null,
   specialGameClassId   int                  null,
   LocationId           int                  not null,
   gameSmallClassId     int                  not null,
   gameNameA            varchar(50)          not null,
   gameNameB            varchar(50)          not null,
   gameTime             datetime             not null,
   gamestatus           numeric(1)           not null,
   gameLength           int                  not null,
   gameResult           numeric(1)           not null,
   constraint PK_GAMEINFO primary key nonclustered (gameId)
)
go

/*==============================================================*/
/* Index: location_to_game_FK                                   */
/*==============================================================*/
create index location_to_game_FK on gameInfo (
LocationId ASC
)
go

/*==============================================================*/
/* Index: game_to_bigclass_FK                                   */
/*==============================================================*/
create index game_to_bigclass_FK on gameInfo (
gameBigClassId ASC
)
go

/*==============================================================*/
/* Index: game_to_smallclass_FK                                 */
/*==============================================================*/
create index game_to_smallclass_FK on gameInfo (
gameSmallClassId ASC
)
go

/*==============================================================*/
/* Index: game_to_special_FK                                    */
/*==============================================================*/
create index game_to_special_FK on gameInfo (
specialGameClassId ASC
)
go

/*==============================================================*/
/* Table: gameNews                                              */
/*==============================================================*/
create table gameNews (
   gameNewsId           int                  not null,
   specialGameClassId   int                  not null,
   userId               numeric(8)           not null,
   LocationId           int                  not null,
   gameBigClassId       int                  not null,
   gameNewsTitle        varchar(255)         not null,
   gameNewsKeyWords     varchar(50)          not null,
   gameNewsContent      text                 not null,
   gameNewsAuthor       varchar(20)          not null,
   gameNewsHitTimes     int                  not null,
   gameNewsCreatedTime  datetime             not null,
   gameNewsEditTimes    int                  not null,
   gameNewsPriority     numeric(1)           not null,
   constraint PK_GAMENEWS primary key nonclustered (gameNewsId)
)
go

/*==============================================================*/
/* Index: user_own_gameNews_FK                                  */
/*==============================================================*/
create index user_own_gameNews_FK on gameNews (
userId ASC
)
go

/*==============================================================*/
/* Index: location_to_gamenews_FK                               */
/*==============================================================*/
create index location_to_gamenews_FK on gameNews (
LocationId ASC
)
go

/*==============================================================*/
/* Index: gamenews_to_bigclass_FK                               */
/*==============================================================*/
create index gamenews_to_bigclass_FK on gameNews (
gameBigClassId ASC
)
go

/*==============================================================*/
/* Index: gamenews_to_special_FK                                */
/*==============================================================*/
create index gamenews_to_special_FK on gameNews (
specialGameClassId ASC
)
go

/*==============================================================*/
/* Table: gameSmallClass                                        */
/*==============================================================*/
create table gameSmallClass (
   gameSmallClassId     int                  not null,
   gameNewsId           int                  null,
   gameSmallClassName   varchar(25)          not null,
   constraint PK_GAMESMALLCLASS primary key nonclustered (gameSmallClassId)
)
go

/*==============================================================*/
/* Index: gamenews_to_smallclass_FK                             */
/*==============================================================*/
create index gamenews_to_smallclass_FK on gameSmallClass (
gameNewsId ASC
)
go

/*==============================================================*/
/* Table: gamenews_to_picture                                   */
/*==============================================================*/
create table gamenews_to_picture (
   pictureId            int                  not null,
   gameNewsId           int                  not null,
   constraint PK_GAMENEWS_TO_PICTURE primary key nonclustered (pictureId, gameNewsId)
)
go

/*==============================================================*/
/* Index: gamenews_to_picture_FK                                */
/*==============================================================*/
create index gamenews_to_picture_FK on gamenews_to_picture (
pictureId ASC
)
go

/*==============================================================*/
/* Index: game_FK                                               */
/*==============================================================*/
create index game_FK on gamenews_to_picture (
gameNewsId ASC
)
go

/*==============================================================*/
/* Table: gamenews_to_vedio                                     */
/*==============================================================*/
create table gamenews_to_vedio (
   videoId              int                  not null,
   gameNewsId           int                  not null,
   constraint PK_GAMENEWS_TO_VEDIO primary key nonclustered (videoId, gameNewsId)
)
go

/*==============================================================*/
/* Index: gamenews_to_vedio_FK                                  */
/*==============================================================*/
create index gamenews_to_vedio_FK on gamenews_to_vedio (
videoId ASC
)
go

/*==============================================================*/
/* Index: gamenews_to_vedio2_FK                                 */
/*==============================================================*/
create index gamenews_to_vedio2_FK on gamenews_to_vedio (
gameNewsId ASC
)
go

/*==============================================================*/
/* Table: gifts                                                 */
/*==============================================================*/
create table gifts (
   giftsId              int                  not null,
   userId               numeric(8)           null,
   giftsname            varchar(25)          not null,
   giftsDescription     varchar(100)         null,
   constraint PK_GIFTS primary key nonclustered (giftsId)
)
go

/*==============================================================*/
/* Index: user_acquire_gifts_FK                                 */
/*==============================================================*/
create index user_acquire_gifts_FK on gifts (
userId ASC
)
go

/*==============================================================*/
/* Table: picture                                               */
/*==============================================================*/
create table picture (
   pictureName          varchar(25)          not null,
   pictureId            int                  not null,
   pictureDescription   varchar(100)         null,
   picturePath          varchar(255)         not null,
   constraint PK_PICTURE primary key nonclustered (pictureId)
)
go

/*==============================================================*/
/* Table: quiz                                                  */
/*==============================================================*/
create table quiz (
   userId               numeric(8)           not null,
   gameId               int                  not null,
   money                int                  not null
      constraint CKC_MONEY_QUIZ check (money >= 10),
   constraint PK_QUIZ primary key nonclustered (userId, gameId)
)
go

/*==============================================================*/
/* Index: quiz_FK                                               */
/*==============================================================*/
create index quiz_FK on quiz (
userId ASC
)
go

/*==============================================================*/
/* Index: quiz2_FK                                              */
/*==============================================================*/
create index quiz2_FK on quiz (
gameId ASC
)
go

/*==============================================================*/
/* Table: specialGameClass                                      */
/*==============================================================*/
create table specialGameClass (
   specialGameClassId   int                  not null,
   specialGameName      varchar(25)          not null,
   constraint PK_SPECIALGAMECLASS primary key nonclustered (specialGameClassId)
)
go

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table "user" (
   userId               numeric(8)           not null,
   pictureId            int                  not null,
   LocationId           int                  not null,
   userName             varchar(16)          not null,
   userPwd              varchar(16)          not null,
   userType             numeric(1)           not null,
   pwdProtectA          text                 not null,
   pwdProtectQ          text                 not null,
   userSex              bit                  not null,
   userLocation         text                 not null,
   userBirthday         datetime             null,
   userConnectMsn       varchar(255)         null,
   userConnectqq        numeric(12)          null,
   userConnectAdd       text                 null,
   userPrefer           text                 null,
   userLoginTimes       int                  not null,
   userConnectPhone     numeric(11)          null,
   userSign             text                 null,
   userConnectEmail     varchar(255)         not null,
   currentLoginTime     datetime             not null,
   constraint PK_USER primary key nonclustered (userId)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '系统中的一般注册用户和系统管理员',
   'user', @CurrentUser, 'table', 'user'
go

/*==============================================================*/
/* Index: user_own_location_FK                                  */
/*==============================================================*/
create index user_own_location_FK on "user" (
LocationId ASC
)
go

/*==============================================================*/
/* Index: user_own_picture_FK                                   */
/*==============================================================*/
create index user_own_picture_FK on "user" (
pictureId ASC
)
go

/*==============================================================*/
/* Table: video                                                 */
/*==============================================================*/
create table video (
   videoId              int                  not null,
   videoPath            varchar(100)         not null,
   videoName            varchar(50)          not null,
   videoDescription     varchar(255)         null,
   constraint PK_VIDEO primary key nonclustered (videoId)
)
go

alter table comment
   add constraint FK_COMMENT_GAME_TO_C_GAMEINFO foreign key (gameId)
      references gameInfo (gameId)
go

alter table comment
   add constraint FK_COMMENT_GAMENEWS__GAMENEWS foreign key (gameNewsId)
      references gameNews (gameNewsId)
go

alter table gameInfo
   add constraint FK_GAMEINFO_GAME_TO_B_GAMEBIGC foreign key (gameBigClassId)
      references gameBigClass (gameBigClassId)
go

alter table gameInfo
   add constraint FK_GAMEINFO_GAME_TO_S_GAMESMAL foreign key (gameSmallClassId)
      references gameSmallClass (gameSmallClassId)
go

alter table gameInfo
   add constraint FK_GAMEINFO_GAME_TO_S_SPECIALG foreign key (specialGameClassId)
      references specialGameClass (specialGameClassId)
go

alter table gameInfo
   add constraint FK_GAMEINFO_LOCATION__LOCATION foreign key (LocationId)
      references Location (LocationId)
go

alter table gameNews
   add constraint FK_GAMENEWS_GAMENEWS__GAMEBIGC foreign key (gameBigClassId)
      references gameBigClass (gameBigClassId)
go

alter table gameNews
   add constraint FK_GAMENEWS_GAMENEWS__SPECIALG foreign key (specialGameClassId)
      references specialGameClass (specialGameClassId)
go

alter table gameNews
   add constraint FK_GAMENEWS_LOCATION__LOCATION foreign key (LocationId)
      references Location (LocationId)
go

alter table gameNews
   add constraint FK_GAMENEWS_USER_OWN__USER foreign key (userId)
      references "user" (userId)
go

alter table gameSmallClass
   add constraint FK_GAMESMAL_GAMENEWS__GAMENEWS foreign key (gameNewsId)
      references gameNews (gameNewsId)
go

alter table gamenews_to_picture
   add constraint FK_GAMENEWS_GAME_GAMENEWS foreign key (gameNewsId)
      references gameNews (gameNewsId)
go

alter table gamenews_to_picture
   add constraint FK_GAMENEWS_GAMENEWS__PICTURE foreign key (pictureId)
      references picture (pictureId)
go

alter table gamenews_to_vedio
   add constraint FK_GAMENEWS_GAMENEWS__VIDEO foreign key (videoId)
      references video (videoId)
go

alter table gamenews_to_vedio
   add constraint FK_GAMENEWS_GAMENEWS__GAMENEWS foreign key (gameNewsId)
      references gameNews (gameNewsId)
go

alter table gifts
   add constraint FK_GIFTS_USER_ACQU_USER foreign key (userId)
      references "user" (userId)
go

alter table quiz
   add constraint FK_QUIZ_QUIZ_USER foreign key (userId)
      references "user" (userId)
go

alter table quiz
   add constraint FK_QUIZ_QUIZ2_GAMEINFO foreign key (gameId)
      references gameInfo (gameId)
go

alter table "user"
   add constraint FK_USER_USER_OWN__LOCATION foreign key (LocationId)
      references Location (LocationId)
go

alter table "user"
   add constraint FK_USER_USER_OWN__PICTURE foreign key (pictureId)
      references picture (pictureId)
go

