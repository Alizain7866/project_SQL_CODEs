
ALTER proc [dbo].[FMS_ddlBindvariations] 
@Query varchar(50)
as
begin
select Type_ID as ID, Name as text from tbl_ManageValues where Type = 'VariationType'  and Name like  '%'+@Query+'%'
end
