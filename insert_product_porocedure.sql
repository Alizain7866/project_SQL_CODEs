USE [final]
GO
/****** Object:  StoredProcedure [dbo].[proc_FMS_Insert_Items]    Script Date: 07/22/2023 6:21:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[proc_FMS_Insert_Items] 'alizain', 'Merchant', 4
@ProductName varchar(50),
@Vendor varchar(50),
@CategoryID int
	as 
		begin 

	

			insert into tbl_Product(ProductName, Vendor, CategoryId)
		values(@ProductName, @Vendor, @CategoryID)
		select SCOPE_IDENTITY()


end
select * from tbl_Product