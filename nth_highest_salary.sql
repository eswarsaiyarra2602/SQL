//leetcode - 177

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
        WITH cte AS
        (SELECT *, DENSE_RANK() OVER(ORDER BY salary DESC)
        as rnk
        FROM Employee)

        SELECT DISTINCT IFNULL(salary,null)
        FROM cte
        WHERE cte.rnk = N 
  );
END
