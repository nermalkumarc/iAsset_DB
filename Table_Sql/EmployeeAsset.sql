USE [TEST]
GO

/****** Object:  Table [IAS].[EmployeeAsset]    Script Date: 25-12-2019 10:38:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [IAS].[EmployeeAsset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NULL,
	[AssetId] [int] NULL,
	[Remarks] [varchar](100) NULL,
	[IssuedOn] [datetime] NULL,
	[ReturnOn] [datetime] NULL,
	[Reason] [varchar](100) NULL,
	[CreatedOn] [date] NULL,
	[UpdatedOn] [date] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [IAS].[EmployeeAsset]  WITH CHECK ADD FOREIGN KEY([AssetId])
REFERENCES [IAS].[Assetlist] ([ID])
GO

ALTER TABLE [IAS].[EmployeeAsset]  WITH CHECK ADD  CONSTRAINT [FK__EmployeeA__EmpId__1A34DF26] FOREIGN KEY([EmpId])
REFERENCES [IAS].[Employeelist] ([ID])
GO

ALTER TABLE [IAS].[EmployeeAsset] CHECK CONSTRAINT [FK__EmployeeA__EmpId__1A34DF26]
GO


