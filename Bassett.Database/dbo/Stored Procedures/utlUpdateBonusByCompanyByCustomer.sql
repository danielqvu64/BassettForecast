
CREATE PROCEDURE [dbo].utlUpdateBonusByCompanyByCustomer 
AS
insert item (item_number)
select distinct left(itembcp.item_number, 12) from itembcp
where not exists (select 1 from item where item.item_number = left(itembcp.item_number, 12))

update item
set item_description = rtrim(ib.item_description)
from item i
join itembcp ib on i.item_number = left(ib.item_number, 12)

update item
set item_description = rtrim(item_description)

dbcc dbreindex(item)