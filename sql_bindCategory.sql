alter proc FMS_DropDownCategories 
	as 
		begin

			select Type_ID , Name from tbl_ManageValues where type='CategoryType' and is_Active = 1
		end 


