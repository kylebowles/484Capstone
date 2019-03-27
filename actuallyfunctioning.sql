USE [master]
GO
/****** Object:  Database [Cued-In]    Script Date: 3/22/2019 5:00:33 PM ******/
CREATE DATABASE [Cued-In]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cued-In', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Cued-In.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cued-In_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Cued-In_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Cued-In] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cued-In].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cued-In] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cued-In] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cued-In] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cued-In] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cued-In] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cued-In] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cued-In] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cued-In] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cued-In] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cued-In] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cued-In] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cued-In] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cued-In] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cued-In] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cued-In] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cued-In] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cued-In] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cued-In] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cued-In] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cued-In] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cued-In] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cued-In] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cued-In] SET RECOVERY FULL 
GO
ALTER DATABASE [Cued-In] SET  MULTI_USER 
GO
ALTER DATABASE [Cued-In] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cued-In] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cued-In] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cued-In] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cued-In] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cued-In', N'ON'
GO
ALTER DATABASE [Cued-In] SET QUERY_STORE = OFF
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Cued-In]
GO
/*** person **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](12) NOT NULL,
	[AddressID] [int] NOT NULL,
	[personType] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[PasswordHash] [varchar](128) NOT NULL,
	[PasswordSalt] [nchar](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[PersonID] int NOT NULL,
	Foreign KEy (personID) references Person(PersonID),
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[HouseNumber] [int] NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Zipcode] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[ApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[RequestID] [int] NOT NULL,
	[EmployerID] [int] NOT NULL,
	[OpportunityID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[SATMath] [int] NULL,
	[SATVerbal] [int] NULL,
	[ACTEnglish] [int] NULL,
	[ACTMath] [int] NULL,
	[ACTReading] [int] NULL,
	[ACTScience] [int] NULL,
	[ACTComposite] [int] NULL,
	FirstName varchar(50)null,
      LastName varchar(50)null,
	Email varchar(100)null,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[AttachmentID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[Content] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Attachment] PRIMARY KEY CLUSTERED 
(
	[AttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentDescription] [nvarchar](1000) NULL,
	[DateCreated] [date] NOT NULL,
	[PostID] [int] NOT NULL,
	[PersonID] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Educator]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Educator](
	[EducatorID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[isAdvisor] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Educator] PRIMARY KEY CLUSTERED 
(
	[EducatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[EmployerID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[isApproved] [nvarchar](5) NOT NULL,
	[EmployerName] [nvarchar](100) NOT NULL,
	[JobTitle] [nvarchar](50),
	[EmployerSummary] [nvarchar](1000),
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[EmployerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployerOpportunity]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployerOpportunity](
	[EmployerID] [int] NOT NULL,
	[OpportunityID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest](
	[InterestID] [int] IDENTITY(1,1) NOT NULL,
	[InterestName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Interest] PRIMARY KEY CLUSTERED 
(
	[InterestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Like]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like](
	[LikeID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[PostID] [int] NOT NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[LikeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opportunity]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opportunity](
	[OpportunityID] [int] IDENTITY(1,1) NOT NULL,
	[OpportunityName] [nvarchar](50) NOT NULL,
	[OpportunityType] [nvarchar](50) NOT NULL,
	[isApprenticeship] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Opportunity] PRIMARY KEY CLUSTERED 
(
	[OpportunityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[ParentID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[StudentID] [int] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Post]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[PostDescription] [nvarchar](1000) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[Deadline] [date] NULL,
	[PersonID] [int] NOT NULL,
	[OpportunityID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostInterest]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostInterest](
	[InterestID] [int] NOT NULL,
	[PostID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referral]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referral](
	[ReferralID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[PostID] [int] NOT NULL,
	[ReferralDescription] [nvarchar](500) NULL,
 CONSTRAINT [PK_Referral] PRIMARY KEY CLUSTERED 
(
	[ReferralID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 3/22/2019 5:00:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[EducatorID] [int] NOT NULL,
	[ApplicationID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[isApproved] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School]    Script Date: 3/22/2019 5:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School](
	[SchoolID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [nvarchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
	[SchoolDistrictName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[SchoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/22/2019 5:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[AcademicYear] [nvarchar](9) NOT NULL,
	[SchoolID] [int] NOT NULL,
	[additionalInfo] [nvarchar](500) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInterest]    Script Date: 3/22/2019 5:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInterest](
	[InterestID] [int] NOT NULL,
	[StudentID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentOpportunity]    Script Date: 3/22/2019 5:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentOpportunity](
	[StudentID] [int] NOT NULL,
	[OpportunityID] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[User_LogTime](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NULL,
	[SID] [nvarchar](50) NULL,
	[Login_Time] [datetime] NULL,
	[Logout_Time] [datetime] NULL,
	[offline] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[User_LogTime]  WITH CHECK ADD FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO


ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Person]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Employer] FOREIGN KEY([EmployerID])
REFERENCES [dbo].[Employer] ([EmployerID])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Employer]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Opportunity] FOREIGN KEY([OpportunityID])
REFERENCES [dbo].[Opportunity] ([OpportunityID])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Opportunity]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Request]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Student_Application] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Student_Application]
GO
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK_Attachment_Application] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[Application] ([ApplicationID])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FK_Attachment_Application]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Person]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post]
GO
ALTER TABLE [dbo].[Educator]  WITH CHECK ADD  CONSTRAINT [FK_Educator_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Educator] CHECK CONSTRAINT [FK_Educator_Person]
GO
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [FK_Employer_Person]
GO
ALTER TABLE [dbo].[EmployerOpportunity]  WITH CHECK ADD  CONSTRAINT [FK_EmployerOpportunity_Employer] FOREIGN KEY([EmployerID])
REFERENCES [dbo].[Employer] ([EmployerID])
GO
ALTER TABLE [dbo].[EmployerOpportunity] CHECK CONSTRAINT [FK_EmployerOpportunity_Employer]
GO
ALTER TABLE [dbo].[EmployerOpportunity]  WITH CHECK ADD  CONSTRAINT [FK_EmployerOpportunity_Opportunity] FOREIGN KEY([OpportunityID])
REFERENCES [dbo].[Opportunity] ([OpportunityID])
GO
ALTER TABLE [dbo].[EmployerOpportunity] CHECK CONSTRAINT [FK_EmployerOpportunity_Opportunity]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Person]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Post]
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_Person]
GO
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_Student]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Person_Post] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Person_Post]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Opportunity] FOREIGN KEY([OpportunityID])
REFERENCES [dbo].[Opportunity] ([OpportunityID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Opportunity]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post]
GO
ALTER TABLE [dbo].[PostInterest]  WITH CHECK ADD  CONSTRAINT [FK_PostInterest_Interest] FOREIGN KEY([InterestID])
REFERENCES [dbo].[Interest] ([InterestID])
GO
ALTER TABLE [dbo].[PostInterest] CHECK CONSTRAINT [FK_PostInterest_Interest]
GO
ALTER TABLE [dbo].[PostInterest]  WITH CHECK ADD  CONSTRAINT [FK_PostInterest_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[PostInterest] CHECK CONSTRAINT [FK_PostInterest_Post]
GO
ALTER TABLE [dbo].[Referral]  WITH CHECK ADD  CONSTRAINT [FK_Referral_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Referral] CHECK CONSTRAINT [FK_Referral_Person]
GO
ALTER TABLE [dbo].[Referral]  WITH CHECK ADD  CONSTRAINT [FK_Referral_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[Referral] CHECK CONSTRAINT [FK_Referral_Post]
GO
ALTER TABLE [dbo].[Referral]  WITH CHECK ADD  CONSTRAINT [FK_Referral_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Referral] CHECK CONSTRAINT [FK_Referral_Student]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Application] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[Application] ([ApplicationID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Application]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Educator] FOREIGN KEY([EducatorID])
REFERENCES [dbo].[Educator] ([EducatorID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Educator]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Student]
GO
ALTER TABLE [dbo].[School]  WITH CHECK ADD  CONSTRAINT [FK_School_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[School] CHECK CONSTRAINT [FK_School_Address]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_School_Student] FOREIGN KEY([SchoolID])
REFERENCES [dbo].[School] ([SchoolID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_School_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Person]
GO
ALTER TABLE [dbo].[StudentInterest]  WITH CHECK ADD  CONSTRAINT [FK_StudentInterest_Interest] FOREIGN KEY([InterestID])
REFERENCES [dbo].[Interest] ([InterestID])
GO
ALTER TABLE [dbo].[StudentInterest] CHECK CONSTRAINT [FK_StudentInterest_Interest]
GO
ALTER TABLE [dbo].[StudentInterest]  WITH CHECK ADD  CONSTRAINT [FK_StudentInterest_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentInterest] CHECK CONSTRAINT [FK_StudentInterest_Student]
GO
ALTER TABLE [dbo].[StudentOpportunity]  WITH CHECK ADD  CONSTRAINT [FK_StudentOpportunity_Opportunity] FOREIGN KEY([OpportunityID])
REFERENCES [dbo].[Opportunity] ([OpportunityID])
GO
ALTER TABLE [dbo].[StudentOpportunity] CHECK CONSTRAINT [FK_StudentOpportunity_Opportunity]
GO
ALTER TABLE [dbo].[StudentOpportunity]  WITH CHECK ADD  CONSTRAINT [FK_StudentOpportunity_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentOpportunity] CHECK CONSTRAINT [FK_StudentOpportunity_Student]
GO
USE [Cued-in]

go
USE [Cued-in]
GO
ALTER DATABASE [Cued-In] SET  READ_WRITE 
GO
ALTER TABLE [dbo].[Attachment]
ALTER COLUMN Content varchar(100);	       
USE [master]
GO
ALTER DATABASE [Cued-In] SET  READ_WRITE 
GO
Use [Cued-In]
GO