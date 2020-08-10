-- neste arquivo trabalharemos com comandos DDL 

use [AdventureWorks2016CTP3]
go

-- Criando uma VIEW através da tabela Person onde exibiremos as colunas BusinessEntityID, FirstName, MiddleName e LastName

--CREATE VIEW vwPersons as
--select 
--	BusinessEntityID as código,
--	FirstName as Nome,
--	MiddleName as [Nome do meio],
--	LastName as Sobrenome
--from Person.Person
--where MiddleName <> 'null'

-- select * from vwPersons

-- drop view vwPersons


exec sp_columns Sales

go

select * from Sales.SalesOrder_json

go










