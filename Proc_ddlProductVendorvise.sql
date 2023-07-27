alter proc FMS_ddlProductVendorvise 
@VendorId int 

as 

begin 
select Product_Id as ID , ProductName as text from tbl_ManageProduct where VendorID = @VendorId
end 

select * from tbl_ManageVariations

create proc FMS_ddlBindvariations

as
begin
select Variation_ID as ID, VariationType as text from tbl_ManageVariations
end


alter proc FMS_InsertVariation 

@Product_Id int,
@Variation_type varchar(50),
@price decimal(18,2),
@Vendor int,
@LastUpdateBy int

	as 
		begin
		
		insert into tbl_ManageVariations (Product_Id, VariationType, Price, Vendor,CreatedDate,LastUpdatedBy,LastUpdatedDate)
		values(@Product_Id, @Variation_type, @price, @Vendor, getdate(),@LastUpdateBy, getdate())
		select SCOPE_IDENTITY()
		end 