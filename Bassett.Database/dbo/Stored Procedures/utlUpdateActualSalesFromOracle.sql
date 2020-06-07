USE [BassettForecast]
GO

/****** Object:  StoredProcedure [dbo].[utlUpdateActualSalesFromOracle]    Script Date: 9/8/2013 4:51:29 PM ******/
DROP PROCEDURE [dbo].[utlUpdateActualSalesFromOracle]
GO

/****** Object:  StoredProcedure [dbo].[utlUpdateActualSalesFromOracle]    Script Date: 9/8/2013 4:51:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[utlUpdateActualSalesFromOracle]
as

declare @cutoffDate datetime
select @cutoffDate = dateadd(year, -3, getdate())

select oas.company_code
, case when oas.customer_number in (select customer_number from Customer where company_code = oas.company_code) then oas.customer_number else 'ZZZZ' end customer_number
, left(item, 12) item_number, datefromparts(booking_year + 2000, booking_month, 1) [month], sum(isnull(cast(monthly_sales as int), 0)) quantity 
into #temp
from [Oracle PRD]..APPS.XXPWC_MONTHLY_SHIPMENTS_V oas
where oas.company_code in (select distinct company_code from Customer)
and datefromparts(booking_year + 2000, booking_month, 1) >= @cutoffDate
group by oas.company_code, oas.customer_number
, left(oas.item, 12), booking_year, booking_month

select company_code, customer_number, item_number, [month], sum(quantity) quantity
into #temp2
from #temp
group by company_code, customer_number, item_number, [month]

--select oraActualSales.company_code, oraActualSales.customer_number, oraActualSales.item_number, oraActualSales.[month], oraActualSales.quantity
--into #temp
--from openquery([Oracle PRD], 'SELECT company_code, customer_number, SUBSTR(item, 1, 11) item_number, TO_DATE(CAST(booking_month AS VARCHAR2(2)) || ''/01/'' || CAST(booking_year AS VARCHAR2(2)), ''MM/DD/YY'') month, SUM(monthly_sales) quantity FROM APPS.XXPWC_MONTHLY_SHIPMENTS_V  GROUP BY company_code, customer_number, SUBSTR(item, 1, 11), booking_year, booking_month') oraActualSales
--where oraActualSales.[month] >= @cutoffDate
--and len(oraActualSales.customer_number) = 4 --*** temporary select customer_number with 4 chars only, will need to extend it to 10 chars

-- , case when oas.customer_number in (select customer_number from Customer where company_code = oas.company_code) then oas.customer_number else 'ZZZZ' end customer_number

insert ActualSales
select *
from #temp2 t
where not exists (select 1 from ActualSales s where t.company_code = s.company_code
				and t.customer_number = s.customer_number
				and t.item_number = s.item_number
				and t.[month] = s.[month])
print 'Rows inserted: ' + cast(@@rowcount as varchar)

update ActualSales
set quantity = t.quantity
from #temp2 t
join ActualSales s
on t.company_code = s.company_code
and t.customer_number = s.customer_number
and t.item_number = s.item_number
and t.[month] = s.[month]
and t.quantity <> s.quantity
print 'Rows updated: ' + cast(@@rowcount as varchar)

delete ActualSales
where [month] < @cutoffDate
print 'Rows deleted: ' + cast(@@rowcount as varchar)

drop table #temp
drop table #temp2

dbcc dbreindex(ActualSales)

GO

