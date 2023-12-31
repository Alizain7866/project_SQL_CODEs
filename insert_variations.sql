USE [final]
GO
/****** Object:  StoredProcedure [dbo].[FMS_InsertVariationsFinal]    Script Date: 07/26/2023 5:58:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[FMS_InsertVariationsFinal]
@ProductID int,
@VendorID int, 
@VariationTypeID int,
@Price int,
@isActive bit,
@CreatedBy int
	as 
		begin
			Insert Into tbl_ManageVariation(ProductID,VendorID, VariationTypeID, Price, isActive, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate)
			values(@ProductID, @VendorID, @VariationTypeID, @Price, @isActive,@CreatedBy,getdate(),@CreatedBy, getdate())
			select SCOPE_IDENTITY()
		end 
