USE [final]
GO
/****** Object:  StoredProcedure [dbo].[FMS_BindProducts]    Script Date: 07/27/2023 1:37:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER proc [dbo].[FMS_BindProducts]   
@Query varchar(50)
	as 
		begin
			select Product_Id as id, ProductName as text from tbl_ManageProduct where ProductName like '%'+@Query+'%'
		end