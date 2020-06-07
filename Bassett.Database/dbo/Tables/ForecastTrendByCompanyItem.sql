CREATE TABLE [dbo].[ForecastTrendByCompanyItem] (
    [company_code]    VARCHAR (3)    NOT NULL,
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
    CONSTRAINT [PK_ForecastTrendByCompanyItem] PRIMARY KEY CLUSTERED ([company_code] ASC, [item_number] ASC, [forecast_method] ASC),
    CONSTRAINT [FK_ForecastTrendByCompanyItem_Company] FOREIGN KEY ([company_code]) REFERENCES [dbo].[Company] ([company_code]),
    CONSTRAINT [FK_ForecastTrendByCompanyItem_Item] FOREIGN KEY ([company_code], [item_number]) REFERENCES [dbo].[Item] ([company_code], [item_number])
);

