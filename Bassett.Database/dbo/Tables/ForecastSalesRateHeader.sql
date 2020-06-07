CREATE TABLE [dbo].[ForecastSalesRateHeader] (
    [company_code]        VARCHAR (3)  NOT NULL,
    [customer_number]     VARCHAR (10) NOT NULL,
    [pos_sales_end_date]  DATETIME     NOT NULL,
    [pos_number_of_weeks] SMALLINT     NOT NULL,
    [timestamp]           ROWVERSION   NOT NULL,
    CONSTRAINT [PK_ForecastSalesRateHeader] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [pos_sales_end_date] ASC),
    CONSTRAINT [FK_ForecastSalesRateHeader_Customer] FOREIGN KEY ([company_code], [customer_number]) REFERENCES [dbo].[Customer] ([company_code], [customer_number])
);

