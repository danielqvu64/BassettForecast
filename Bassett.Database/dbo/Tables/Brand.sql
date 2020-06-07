CREATE TABLE [dbo].[Brand] (
    [brand_code]        VARCHAR (2)   NOT NULL,
    [brand_description] VARCHAR (100) NULL,
    [timestamp]         ROWVERSION    NOT NULL,
    CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED ([brand_code] ASC) WITH (FILLFACTOR = 90)
);

