CREATE PROCEDURE [dbo].[item_upd]
	@objectKey xml
	, @item_number varchar(12)
	, @item_description varchar(150)
	, @product_group_code varchar(4)
	, @timestamp timestamp OUTPUT
AS

SET NOCOUNT ON

IF NOT EXISTS (SELECT 1 FROM Item WHERE timestamp = @timestamp) BEGIN
    RAISERROR ('Timestamp mismatched', -- Message text.
               16, -- Severity.
               1 -- State.
               );
	RETURN
END

DECLARE	 @company_code_key varchar(3)
	, @item_number_key varchar(12)

SELECT	@company_code_key = @objectKey.value('/ObjectKey[1]/@CompanyCode', 'varchar(3)')
	, @item_number_key = @objectKey.value('/ObjectKey[1]/@ItemNumber', 'varchar(12)')

UPDATE	item
	SET item_number = @item_number
	, item_description = @item_description
	, product_group_code = @product_group_code
WHERE	company_code = @company_code_key
AND		item_number = @item_number_key

SELECT	@timestamp = timestamp
FROM	Item
WHERE	item_number = @item_number_key

