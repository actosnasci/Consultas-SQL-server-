use AdventureWorks2016CTP3

select * from Sales.SalesOrderHeader


select 
	sum(TotalDue) as [total devido]
from Sales.SalesOrderHeader where
ShipDate between '2012-05-01' and '2014-05-01'

select 
	CustomerID as [ID Cliente],
	SubTotal,
	SalesOrderID as [Ordem de venda ID],
	ShipDate as [Data de Envio]
from Sales.SalesOrderHeader
where OnlineOrderFlag = '1'
and ShipDate between '2013-01-01' and '2013-06-06'
order by [ID Cliente] asc


