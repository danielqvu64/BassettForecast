CREATE TABLE [dbo].[ForecastSalesRate] (
    [company_code]         VARCHAR (3)    NOT NULL,
    [customer_number]      VARCHAR (10)   NOT NULL,
    [pos_sales_end_date]   DATETIME       NOT NULL,
    [item_number]          VARCHAR (12)   NOT NULL,
    [trend_factor]         DECIMAL (5, 2) NULL,
    [pos_week_1_quantity]  INT            NULL,
    [pos_week_2_quantity]  INT            NULL,
    [pos_week_3_quantity]  INT            NULL,
    [pos_week_4_quantity]  INT            NULL,
    [store_count_existing] INT            NULL,
    [store_count_new]      INT            NULL,
    [sales_rate]           DECIMAL (5, 2) NULL,
    [sales_rate_previous]  DECIMAL (5, 2) NULL,
    [timestamp]            ROWVERSION     NOT NULL,
    CONSTRAINT [PK_ForecastSalesRate] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [item_number] ASC, [pos_sales_end_date] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_ForecastSalesRate_ForecastSalesRateHeader] FOREIGN KEY ([company_code], [customer_number], [pos_sales_end_date]) REFERENCES [dbo].[ForecastSalesRateHeader] ([company_code], [customer_number], [pos_sales_end_date]),
    CONSTRAINT [FK_ForecastSalesRate_Item] FOREIGN KEY ([company_code], [item_number]) REFERENCES [dbo].[Item] ([company_code], [item_number]),
    CONSTRAINT [FK_ForecastSalesRate_WeekCalendar] FOREIGN KEY ([pos_sales_end_date]) REFERENCES [dbo].[WeekCalendar] ([week_end_date])
);

