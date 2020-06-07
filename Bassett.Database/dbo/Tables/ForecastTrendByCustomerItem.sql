CREATE TABLE [dbo].[ForecastTrendByCustomerItem] (
    [company_code]    VARCHAR (3)    NOT NULL,
    [customer_number] VARCHAR (10)   NOT NULL,
    [item_number]     VARCHAR (12)   NOT NULL,
    [forecast_method] CHAR (2)       NOT NULL,
    [factor_month_01] DECIMAL (5, 2) NOT NULL,
    [factor_month_02] DECIMAL (5, 2) NOT NULL,
    [factor_month_03] DECIMAL (5, 2) NOT NULL,
    [factor_month_04] DECIMAL (5, 2) NOT NULL,
    [factor_month_05] DECIMAL (5, 2) NOT NULL,
    [factor_month_06] DECIMAL (5, 2) NOT NULL,
    [factor_month_07] DECIMAL (5, 2) NOT NULL,
    [factor_month_08] DECIMAL (5, 2) NOT NULL,
    [factor_month_09] DECIMAL (5, 2) NOT NULL,
    [factor_month_10] DECIMAL (5, 2) NOT NULL,
    [factor_month_11] DECIMAL (5, 2) NOT NULL,
    [factor_month_12] DECIMAL (5, 2) NOT NULL,
    [timestamp]       ROWVERSION     NOT NULL,
    CONSTRAINT [PK_ForecastTrendByCustomerItem] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [item_number] ASC, [forecast_method] ASC),
    CONSTRAINT [FK_ForecastTrendByCustomerItem_Customer] FOREIGN KEY ([company_code], [customer_number]) REFERENCES [dbo].[Customer] ([company_code], [customer_number]),
    CONSTRAINT [FK_ForecastTrendByCustomerItem_Item] FOREIGN KEY ([company_code], [item_number]) REFERENCES [dbo].[Item] ([company_code], [item_number])
);

