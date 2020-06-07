CREATE TABLE [dbo].[ForecastSalesRateCommentAndOverride] (
    [company_code]       VARCHAR (3)   NOT NULL,
    [customer_number]    VARCHAR (10)  NOT NULL,
    [item_number]        VARCHAR (12)  NOT NULL,
    [pos_sales_end_date] DATETIME      NOT NULL,
    [date_time]          DATETIME      NOT NULL,
    [comment]            VARCHAR (255) NULL,
    [manual_flag]        BIT           NULL,
    CONSTRAINT [PK_ForecastSalesRateCommentAndOverride] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [item_number] ASC, [pos_sales_end_date] ASC, [date_time] DESC),
    CONSTRAINT [FK_ForecastSalesRateCommentAndOverride_ForecastSalesRate] FOREIGN KEY ([company_code], [customer_number], [item_number], [pos_sales_end_date]) REFERENCES [dbo].[ForecastSalesRate] ([company_code], [customer_number], [item_number], [pos_sales_end_date])
);

