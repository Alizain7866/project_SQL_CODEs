

CREATE TABLE [dbo].[tbl_ManageVariations](
	[Variation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NULL,
	[VariationType] [varchar](500) NULL,
	[Price] [int] NULL,
	[Vendor] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [Variation_ID] PRIMARY KEY CLUSTERED 
(
	[Variation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

