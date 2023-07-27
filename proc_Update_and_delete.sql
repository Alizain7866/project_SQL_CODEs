alter Proc FMS_Edit_ManageProduct
@ProductId int 
	as 
		begin 
			select MP.*,Vn.VendorName from tbl_ManageProduct as MP
			left join tbl_Vendor as Vn on Vn.VendorID = MP.VendorID
			where MP.Product_Id = @ProductId
		end 
 
alter proc FMS_Update_ManageProduct
@Product_Id int,
@ProductName varchar(255),
@VendorID int, 
@CategoryID int,
@is_Active int,
@LastUpdatedBy int
	as 
		if not exists (select Product_Id from tbl_ManageProduct where VendorID = @VendorID and CategoryID = @CategoryID  and Product_Id != @Product_Id)
				begin
					update tbl_ManageProduct set ProductName = @ProductName, is_Active = @is_Active, CategoryID = @CategoryID, VendorID = @VendorID,
					LastUpdatedBy = @LastUpdatedBy, LastUpdatedDate = GETDATE()
					where Product_ID = @ProductId
				end


create Proc FMS_Delete_ManageProduct
@Product_Id int
	as
		begin
		delete tbl_ManageProduct where Product_Id = @Product_Id 
		end
		
		select * from tbl_Vendor