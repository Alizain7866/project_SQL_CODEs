USE [final]
GO
/****** Object:  StoredProcedure [dbo].[FMS_VerifyUserLoging]    Script Date: 07/27/2023 12:02:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[FMS_VerifyUserLoging] 
@emailID varchar(255),
@password varchar(255)
as 
begin
select * from User_details where user_email_address = @emailID and user_password = @password
end 


update User_details
set user_password = '123'
where userid = 1