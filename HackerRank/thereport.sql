/* https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true */

SELECT 
    CASE WHEN g.Grade < 8 THEN NULL ELSE s.Name END as Name,
    g.Grade, s.Marks FROM Students AS s
INNER JOIN Grades AS g
ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.name ASC;

