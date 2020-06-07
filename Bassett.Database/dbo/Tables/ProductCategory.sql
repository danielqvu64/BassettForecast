CREATE TABLE [dbo].[ProductCategory] (
    [product_category_code]        VARCHAR (2)   NOT NULL,
    [product_category_description] VARCHAR (100) NULL,
    [timestamp]                    ROWVERSION    NOT NULL,
    CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED ([product_category_code] ASC) WITH (FILLFACTOR = 90)
);

