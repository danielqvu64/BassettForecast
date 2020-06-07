CREATE TABLE [dbo].[CompanyOrganization] (
    [company_code]      VARCHAR (2) NOT NULL,
    [organization_code] VARCHAR (3) NOT NULL,
    CONSTRAINT [PK_CompanyOrganzation] PRIMARY KEY CLUSTERED ([company_code] ASC)
);

