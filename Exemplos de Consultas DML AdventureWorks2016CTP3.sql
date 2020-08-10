
use AdventureWorks2016CTP3

-- execu��o de consultas em T-sql no banco de dados de ewxemplo AdventureWorks2016TP3 e AdventureWorksDQ2016CTP3 

-- exemplos de uso do select sem where e from 

 select [Nome do servidor] = @@SERVERNAME, [NOME DO SERVI�O] = @@SERVICENAME

 Outra forma de exibi��o. O resultado aparecer� em uma �nica coluna

 select [Nome do servidor e do servi�o] = @@SERVERNAME + ',' + @@SERVICENAME

select top 5 name from HumanResources.Department



-- Order by ASC  e DESC -- nesse cen�rio voc� pede que o sql retorne resultados em que haja uma ordem em um dos atributos

select * from Person.Address 
order by AddressID desc --ASC


select 
	BusinessEntityID,
	FirstName as nome,
	LastName as sobrenome,
	ModifiedDate
from Person.Person 
order by BusinessEntityID -- DESC


--
select
	sum(StandardCost)
from Production.Product
group by name 

select * from Production.Product

select * from Sales.SalesOrderDetail

-- exemplo de utiliza��o da cl�usula GROUP BY

select
	sum(TaxAmt) as [Soma para por data],
	OrderDate
from sales.SalesOrderHeader
group by OrderDate


-- select * from Sales.SalesOrderHeader

select
	sum(TaxAmt) as [Soma para por data],
	OrderDate
from sales.SalesOrderHeader
group by OrderDate



select * from Production.Product 
select * from Production.ProductCategory
select * from Production.ProductSubcategory

-- Resultset com inner join feito para resultar em uma nova tabela - exemplo do comando insert into
 
select 
	A.Name,
	A.SafetyStockLevel as [N�vel de estoque],
	B.Name as Categoria,
	c.Name as subcategoria
	into tbl_testeA
from Production.Product a 
inner join Production.ProductCategory b
on a.ProductSubcategoryID = b.ProductCategoryID
inner join Production.ProductSubcategory c
on  a.ProductSubcategoryID = c.ProductSubcategoryID


-- drop table testedois

-- exemplo de uso do comando UNION  -- S� � poss�vel se as tabelas tiverem tipos de dados iguais bem como n�mero e �rdem de colunas
-- iguais

select AddressLine1 from Person.Address
union -- all
select name from Person.AddressType

--order by AddressLine1


-- testes do resultset para left join e right join
select 
	A.Name,
	A.SafetyStockLevel as [N�vel de estoque],
	B.Name as Categoria,
	c.Name as subcategoria
from Production.Product a 
right join Production.ProductCategory b
on a.ProductSubcategoryID = b.ProductCategoryID
right join Production.ProductSubcategory c
on  a.ProductSubcategoryID = c.ProductSubcategoryID 




select 
	BusinessEntityID,
	PersonType,
	Title,
	FirstName,
	MiddleName,
	LastName
from Person.Person
intersect 
select
BusinessEntityID,
	PersonType,
	Title,
	FirstName,
	MiddleName,
	LastName
from Person.Person_Temporal

select * from Person.Person

-- select * from Person.Person