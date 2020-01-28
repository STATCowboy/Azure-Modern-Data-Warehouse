SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerAddress](
	[CustomerID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressType] [varchar](128) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) WITH
( CLUSTERED COLUMNSTORE INDEX 
,   DISTRIBUTION = ROUND_ROBIN)
;