﻿CREATE PROCEDURE [dbo].[item_sel]
	@objectKey xml
AS

SET NOCOUNT ON

DECLARE	@company_code varchar(3)
	, @item_number varchar(12)

SELECT	@company_code = @objectKey.value('/ObjectKey[1]/@CompanyCode', 'varchar(3)')
	, @item_number = @objectKey.value('/ObjectKey[1]/@ItemNumber', 'varchar(12)')

SELECT	company_code, item_number, item_description, product_group_code, timestamp
FROM	Item
WHERE	company_code = @company_code
AND		item_number = @item_number
