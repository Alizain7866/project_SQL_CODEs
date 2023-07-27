
alter proc [dbo].[FMS_Add_Vendor]
@VendorName varchar(255), 
@PhoneNo varchar(50),
@is_Active int,
@CreatedBy int

	as 
		if((select count(VendorId) from tbl_Vendor where VendorName = @VendorName  )= 0)  
			begin  
				insert into tbl_Vendor (VendorName, PhoneNo, is_Active, CreatedBy, CreatedDate)
				values(@VendorName, @PhoneNo,@is_Active,@CreatedBy,getdate())
				select 1
			end
		else  
			begin  
				select 0  
			end  
	

