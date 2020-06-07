CREATE PROCEDURE [dbo].[itemCollection_sel]
	@company_code varchar(3)
	, @item_number varchar(12)
	, @item_description varchar(150)
	, @product_group_code varchar(4)
	, @brand_code varchar(2)
	, @product_category_code varchar(2)
AS

SET NOCOUNT ON
SELECT	TOP 300 company_code, item_number, item_description, product_group_code, timestamp
FROM	Item
WHERE	company_code = @company_code
AND		item_number LIKE ISNULL('%' + @item_number + '%', item_number)
AND	((@item_description IS NOT NULL AND item_description LIKE '%' + @item_description + '%')
	OR @item_description IS NULL)
AND	((@product_group_code IS NOT NULL AND product_group_code = @product_group_code)
	OR @product_group_code IS NULL)
AND	((@brand_code IS NOT NULL AND LEFT(product_group_code, 2) = @brand_code)
	OR @brand_code IS NULL)
AND	((@product_category_code IS NOT NULL AND RIGHT(product_group_code, 2) = @product_category_code)
	OR @product_category_code IS NULL)
ORDER BY item_number
