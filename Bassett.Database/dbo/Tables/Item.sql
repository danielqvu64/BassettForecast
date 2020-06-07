CREATE TABLE [dbo].[Item] (
    [company_code]       VARCHAR (3)   NOT NULL,
    [item_number]        VARCHAR (12)  NOT NULL,
    [item_description]   VARCHAR (150) NULL,
    [product_group_code] VARCHAR (4)   NULL,
    [timestamp]          ROWVERSION    NOT NULL,
    CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([company_code] ASC, [item_number] ASC),
    CONSTRAINT [FK_Item_ProductGroup] FOREIGN KEY ([product_group_code]) REFERENCES [dbo].[ProductGroup] ([product_group_code])
);

