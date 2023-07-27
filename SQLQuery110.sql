alter proc FMS_BindVariationProductVise 11
@productID int
as 

begin 
select VariationTypeID, Name as VariationName, Price from tbl_ManageVariation, tbl_ManageProduct, tbl_manageValues where tbl_ManageVariation.ProductID = @productID and tbl_ManageProduct.Product_Id = @productID and tbl_manageValues.Type_ID = tbl_manageVariation.VariationTypeID
end 

select * from tbl_ManageProduct where Product_Id = 11



alter proc FMS_GetPricebyVariationID 11, 6
@ProductId int,
@VariationId int 
	as 
		begin
			select * from tbl_ManageVariation where VariationTypeID = @VariationId and ProductID = @ProductId 
		end 
