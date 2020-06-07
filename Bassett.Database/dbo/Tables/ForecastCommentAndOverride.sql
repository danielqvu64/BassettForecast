CREATE TABLE [dbo].[ForecastCommentAndOverride] (
    [company_code]       VARCHAR (3)   NOT NULL,
    [customer_number]    VARCHAR (10)  NOT NULL,
    [pos_sales_end_date] DATETIME      NOT NULL,
    [item_number]        VARCHAR (12)  NOT NULL,
    [forecast_method]    VARCHAR (2)   NOT NULL,
    [forecast_value_key] CHAR (5)      NOT NULL,
    [date_time]          DATETIME      NOT NULL,
    [comment]            VARCHAR (255) NULL,
    [manual_flag]        BIT           NULL,
    CONSTRAINT [PK_ForecastCommentAndOverride] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC, [pos_sales_end_date] ASC, [item_number] ASC, [forecast_method] ASC, [forecast_value_key] ASC, [date_time] DESC),
    CONSTRAINT [FK_ForecastCommentAndOverride_Forecast] FOREIGN KEY ([company_code], [customer_number], [pos_sales_end_date], [item_number], [forecast_method]) REFERENCES [dbo].[Forecast] ([company_code], [customer_number], [pos_sales_end_date], [item_number], [forecast_method])
);

