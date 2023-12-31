USE [final]
GO
/****** Object:  StoredProcedure [dbo].[FMS_InsertVariationsFinal]    Script Date: 07/26/2023 6:21:00 PM ******/
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


alter proc FMS_VerifyUserLogin 
@emailID varchar(255),
@password varchar(255)
as 
begin
select Userid from User_details where user_email_address = @emailID and user_password = @password

end 
 