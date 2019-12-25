USE [TEST]
GO

/****** Object:  Table [IAS].[Employeelist]    Script Date: 25-12-2019 10:38:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [IAS].[Employeelist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Name] [varchar](50) NULL,
	[EmailID] [varchar](70) NULL,
	[MobileNo] [nvarchar](10) NULL,
	[Department] [varchar](30) NULL,
	[Designation] [varchar](30) NULL,
	[RoleID] [bit] NULL,
	[DOJ] [datetime] NULL,
	[Location] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[isActive] [bit] NULL,
	[Gender] [varchar](20) NULL,
	[CreatedOn] [date] NULL,
	[UpdatedOn] [date] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK__Employee__3214EC271C5231C2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UQ__Employee__A25C5AA71F2E9E6D] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO


