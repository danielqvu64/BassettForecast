CREATE TABLE [dbo].[POS] (
    [company_code]    VARCHAR (3)  NOT NULL,
    [customer_number] VARCHAR (10) NOT NULL,
    [item_number]     VARCHAR (12) NOT NULL,
    [week_end_date]   DATETIME     NOT NULL,
    [quantity]        INT          NOT NULL,
    CONSTRAINT [PK_POS] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [item_number] ASC, [week_end_date] ASC) WITH (FILLFACTOR = 90)
);

