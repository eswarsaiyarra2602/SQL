//leetcode - 176

SELECT 
    CASE
        WHEN COUNT(DISTINCT salary)>=2 THEN(
            SELECT DISTINCT salary 
            FROM Employee
            ORDER BY salary DESC
            LIMIT 1 OFFSET 1
        )
        ELSE(
            NULL
        )
        END AS SecondHighestSalary
From Employee;
