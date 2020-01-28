SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[CustomerID] [int]  NOT NULL,
	[NameStyle] [varchar](128) NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [varchar](128) NOT NULL,
	[MiddleName] [varchar](128) NULL,
	[LastName] [varchar](128) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[CompanyName] [nvarchar](128) NULL,
	[SalesPerson] [nvarchar](256) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Phone] [varchar](128) NULL,
	[PasswordHash] [varchar](128) NOT NULL,
	[PasswordSalt] [varchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) WITH
( CLUSTERED COLUMNSTORE INDEX 
,   DISTRIBUTION = ROUND_ROBIN)
;