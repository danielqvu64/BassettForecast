﻿CREATE PROCEDURE [dbo].[bonusAndDiscontinuedByCustomer_del]
	@objectKey xml
AS

SET NOCOUNT ON

DECLARE	@company_code varchar(3)
	, @customer_number varchar(10)
	, @item_number varchar(12)

SELECT	@company_code = @objectKey.value('/ObjectKey[1]/@CompanyCode', 'varchar(3)')
	, @customer_number = @objectKey.value('/ObjectKey[1]/@CustomerNumber', 'varchar(10)')
	, @item_number = @objectKey.value('/ObjectKey[1]/@ItemNumber', 'varchar(12)')

DELETE	BonusAndDiscontinuedByCustomer
WHERE	company_code = @company_code
AND	customer_number = @customer_number
AND	item_number = @item_number
