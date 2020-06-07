CREATE TABLE [dbo].[ProductGroup] (
    [product_group_code]        VARCHAR (4)   NOT NULL,
    [product_group_description] VARCHAR (100) NULL,
    [brand_code]                VARCHAR (2)   NOT NULL,
    [product_category_code]     VARCHAR (2)   NOT NULL,
    [timestamp]                 ROWVERSION    NOT NULL,
    CONSTRAINT [PK_ProductGroup] PRIMARY KEY CLUSTERED ([product_group_code] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_ProductGroup_Brand] FOREIGN KEY ([brand_code]) REFERENCES [dbo].[Brand] ([brand_code]),
    CONSTRAINT [FK_ProductGroup_ProductCategory] FOREIGN KEY ([product_category_code]) REFERENCES [dbo].[ProductCategory] ([product_category_code])
);

