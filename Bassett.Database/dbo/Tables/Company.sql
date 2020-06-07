CREATE TABLE [dbo].[Company] (
    [company_code] VARCHAR (3)   NOT NULL,
    [company_name] VARCHAR (100) NULL,
    [item_suffix]  CHAR (3)      NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([company_code] ASC) WITH (FILLFACTOR = 90)
);

