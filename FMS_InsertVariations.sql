alter proc FMS_InsertVariationsFinal
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
