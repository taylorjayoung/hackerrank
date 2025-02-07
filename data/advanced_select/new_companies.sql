/**Manager: The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company. 

Employee: The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company. 

Sample Input

Company Table:  Lead_Manager Table:  Senior_Manager Table:  Manager Table:  Employee Table: 

Sample Output

C1 Monika 1 2 1 2
C2 Samantha 1 1 2 2
Explanation

In company C1, the only lead manager is LM1. There are two senior managers, SM1 and SM2, under LM1. There is one manager, M1, under senior manager SM1. There are two employees, E1 and E2, under manager M1.

In company C2, the only lead manager is LM2. There is one senior manager, SM3, under LM2. There are two managers, M2 and M3, under senior manager SM3. There is one employee, E3, under manager M2, and another employee, E4, under manager, M3.
**/




SELECT DISTINCT 
    c.company_code,
    founder,
    count( distinct lm.lead_manager_code),
    count( distinct sm.senior_manager_code),
    count( distinct m.manager_code),
    count( distinct e.employee_code)
FROM company c
LEFT JOIN lead_manager lm ON (lm.company_code = c.company_code)
LEFT JOIN senior_manager sm ON (sm.company_code = c.company_code)
LEFT JOIN manager m ON (m.company_code = c.company_code)
LEFT JOIN employee e ON (e.company_code = c.company_code)
GROUP BY c.company_code, founder
ORDER BY 
    c.company_code;