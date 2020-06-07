CREATE TABLE [dbo].[Customer] (
    [company_code]                  VARCHAR (3)    NOT NULL,
    [customer_number]               VARCHAR (10)   NOT NULL,
    [customer_name]                 VARCHAR (100)  NULL,
    [distinct_forecast_name_flag]   BIT            NULL,
    [forecast_method]               VARCHAR (2)    NOT NULL,
    [inflate_factor]                DECIMAL (5, 2) NULL,
    [forecast_future_frozen_months] SMALLINT       CONSTRAINT [DF_Customer_forecast_future_frozen_months] DEFAULT ((0)) NOT NULL,
    [timestamp]                     ROWVERSION     NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([company_code] ASC, [customer_number] ASC) WITH (FILLFACTOR = 90),
    CONSTRAINT [FK_Customer_Company] FOREIGN KEY ([company_code]) REFERENCES [dbo].[Company] ([company_code])
);

