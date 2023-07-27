USE [final]
GO
/****** Object:  StoredProcedure [dbo].[FMS_BindAllVendors]    Script Date: 07/26/2023 2:46:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[FMS_BindAllVendors]  
	as 
		begin
			select VendorId as VendorID , VendorName  as Vendor from tbl_Vendor where is_Active = 1 
		end

select * from tbl_ManageValues