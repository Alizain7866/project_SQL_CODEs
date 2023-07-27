

ALTER proc [dbo].[FMS_BindAllProducts]  
	as 
		begin
			select Product_Id, ProductName from tbl_Product 
		end



alter proc [dbo].[FMS_BindAllVendors]  
@Query varchar(50)
	as 
		begin
			select VendorId as id , VendorName  as text from tbl_Vendor where is_Active = 1 and VendorName like '%'+@Query+'%'
		end