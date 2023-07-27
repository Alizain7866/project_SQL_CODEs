

CREATE TABLE [dbo].[tbl_ManageVariation](
	[Variation_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[VendorID] [int] NULL,
	[VariationTypeID] int NULL,
	[Price] decimal(18,2) NULL,
	[IsActive] bit Null,
	[CreatedBy] int NULL,
	
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [Variation_ID] PRIMARY KEY CLUSTERED 
(
	[Variation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


