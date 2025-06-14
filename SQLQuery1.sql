SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from churn)  as Percentage, Customer_Status
from [churn]
Group by Gender, Customer_Status
Order by Percentage desc;

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from churn)  as Percentage, Customer_Status
from churn
Group by Contract, Customer_Status
Order by Percentage desc

SELECT Internet_Service, Count(Internet_Service) as TotalCount,
Count(Internet_Service) * 100.0 / (Select Count(*) from churn)  as Percentage, Customer_Status
from churn
Group by Internet_Service, Customer_Status
Order by Percentage desc

SELECT Online_Security, Count(Online_Security) as TotalCount,
Count(Online_Security) * 100.0 / (Select Count(*) from churn)  as Percentage, Customer_Status
from churn
Group by Online_Security, Customer_Status
Order by Percentage desc

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from churn) * 100  as RevPercentage
from churn
Group by Customer_Status
Order by RevPercentage desc

SELECT State, Count(State) as TotalCount, 
Count(State) * 100.0 / (Select Count(*) from churn)  as Percentage
from churn
Group by State
Order by Percentage desc
 