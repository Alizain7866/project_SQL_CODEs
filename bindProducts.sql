 
 ALTER proc [dbo].[FMS_BindProducts]   
@Query varchar(50)
	as 
		begin
			select Product_Id as id, ProductName as text from tbl_Product where ProductName like '%'+@Query+'%'
		end