
ALTER proc [dbo].[FMS_Bind_ManageProducts] 
	as 
		begin 
			select MP.Product_Id, Mp.ProductName, MP.CreatedDate, VE.VendorName, MV.Name as CategoryName,
			case MP.is_Active when 1 then 'Active' else 'InActive' end as Status
			from tbl_ManageProduct as MP
			left join tbl_vendor as VE on VE.VendorID = MP.VendorID
			left join tbl_Managevalues as MV on MV.Type_ID = MP.CategoryID
		end 


