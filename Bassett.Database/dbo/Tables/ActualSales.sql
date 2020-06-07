CREATE TABLE [dbo].[ActualSales] (
    [company_code]    VARCHAR (3)  NOT NULL,
    [customer_number] VARCHAR (10) NOT NULL,
    [item_number]     VARCHAR (12) NOT NULL,
    [month]           DATETIME     NOT NULL,
    [quantity]        INT          NOT NULL,
    CONSTRAINT [PK_ActualSales] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [item_number] ASC, [month] ASC) WITH (FILLFACTOR = 90)
);

