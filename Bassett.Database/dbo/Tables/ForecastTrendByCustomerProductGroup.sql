CREATE TABLE [dbo].[ForecastTrendByCustomerProductGroup] (
    [company_code]       VARCHAR (3)    NOT NULL,
    [customer_number]    VARCHAR (10)   NOT NULL,
    [product_group_code] VARCHAR (4)    NOT NULL,
    [forecast_method]    CHAR (2)       NOT NULL,
    [factor_month_01]    DECIMAL (5, 2) NOT NULL,
    [factor_month_02]    DECIMAL (5, 2) NOT NULL,
    [factor_month_03]    DECIMAL (5, 2) NOT NULL,
    [factor_month_04]    DECIMAL (5, 2) NOT NULL,
    [factor_month_05]    DECIMAL (5, 2) NOT NULL,
    [factor_month_06]    DECIMAL (5, 2) NOT NULL,
    [factor_month_07]    DECIMAL (5, 2) NOT NULL,
    [factor_month_08]    DECIMAL (5, 2) NOT NULL,
    [factor_month_09]    DECIMAL (5, 2) NOT NULL,
    [factor_month_10]    DECIMAL (5, 2) NOT NULL,
    [factor_month_11]    DECIMAL (5, 2) NOT NULL,
    [factor_month_12]    DECIMAL (5, 2) NOT NULL,
    [timestamp]          ROWVERSION     NOT NULL,
    CONSTRAINT [PK_ForecastTrendByCustomeProductGroup] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [product_group_code] ASC, [forecast_method] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_ForecastTrendByCustomerProductGroup_Customer] FOREIGN KEY ([company_code], [customer_number]) REFERENCES [dbo].[Customer] ([company_code], [customer_number]),
    CONSTRAINT [FK_ForecastTrendByCustomerProductGroup_ProductGroup] FOREIGN KEY ([product_group_code]) REFERENCES [dbo].[ProductGroup] ([product_group_code])
);

