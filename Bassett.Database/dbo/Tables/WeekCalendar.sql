CREATE TABLE [dbo].[WeekCalendar] (
    [year]            INT      NOT NULL,
    [week_no]         INT      NOT NULL,
    [week_start_date] DATETIME NOT NULL,
    [week_end_date]   DATETIME NOT NULL,
    CONSTRAINT [PK_WeekCalendar] PRIMARY KEY CLUSTERED ([week_end_date] ASC) WITH (FILLFACTOR = 90)
);

