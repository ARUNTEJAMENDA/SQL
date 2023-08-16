/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note: The tables may contain duplicate records.

Enter your query here.
*/

SELECT c.Company_Code, c.founder, count(Distinct e.Lead_Manager_Code), 
count(distinct e.Senior_Manager_Code), count(distinct e.Manager_Code), 
count(distinct e.employee_Code) FROM Company c 
JOIN Employee e ON c.Company_Code = e.Company_Code GROUP BY c.Company_Code, c.Founder ORDER BY c.COMpany_Code;

/*--------------mine----------------*/
SELECT 
COMPANY_CODE,FOUNDER,
(SELECT COUNT(DISTINCT LEAD_MANAGER_CODE) FROM LEAD_MANAGER WHERE COMPANY_CODE  = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE) FROM SENIOR_MANAGER WHERE COMPANY_CODE  = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT MANAGER_CODE) FROM MANAGER WHERE COMPANY_CODE  = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT EMPLOYEE_CODE) FROM EMPLOYEE WHERE COMPANY_CODE  = C.COMPANY_CODE)
FROM COMPANY C ORDER BY COMPANY_CODE;
