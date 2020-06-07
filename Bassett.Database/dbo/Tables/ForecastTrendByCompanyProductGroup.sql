CREATE TABLE [dbo].[ForecastTrendByCompanyProductGroup] (
    [company_code]       VARCHAR (3)    NOT NULL,
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
    CONSTRAINT [PK_ForecastTrendByCompanyProductGroup] PRIMARY KEY CLUSTERED ([company_code] ASC, [product_group_code] ASC, [forecast_method] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_ForecastTrendByCompanyProductGroup_Company] FOREIGN KEY ([company_code]) REFERENCES [dbo].[Company] ([company_code]),
    CONSTRAINT [FK_ForecastTrendByCompanyProductGroup_ProductGroup] FOREIGN KEY ([product_group_code]) REFERENCES [dbo].[ProductGroup] ([product_group_code])
);

