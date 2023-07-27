create proc FMS_Bind_ManageProducts 
	as 
		begin 
		select MP.ProductID from tbl_ManageProduct as MP
		left join tbl_vendor as VE on VE.VendorID = MP.VendorID
		left join tbl_Managevalues as MV on MV.Type_ID = MP.CategoryID
		end 
