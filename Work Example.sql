/****** 

Purpose:  Sample code that shows CTE and joins in a practical ad-hoc    Script Date: 01/20/2023 

******/

USE Database_Name
;

with CTE AS ( 
select
AccountID
,Username
from
InformationTable
)

select
A.*
,CTE.Username
from
TransactionTable A
left outer join CTE on A.AccountID = CTE.AccountID
