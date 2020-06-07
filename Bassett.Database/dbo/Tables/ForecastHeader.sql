CREATE TABLE [dbo].[ForecastHeader] (
    [company_code]       VARCHAR (3)  NOT NULL,
    [customer_number]    VARCHAR (10) NOT NULL,
    [pos_sales_end_date] DATETIME     NOT NULL,
    [timestamp]          ROWVERSION   NOT NULL,
    CONSTRAINT [PK_ForecastHeader] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [pos_sales_end_date] ASC)
);

