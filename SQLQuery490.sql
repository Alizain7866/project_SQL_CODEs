USE [final]
GO
/****** Object:  StoredProcedure [dbo].[FMS_GetPricebyProductId]    Script Date: 07/27/2023 1:39:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[FMS_GetPricebyProductId] 
@Product_Id int
		as
			begin
				select * from tbl_ManageProduct TMP, tbl_ManageVariation TMV where Product_Id = @Product_Id and TMP.Product_Id = TMV.ProductID  
 			end 