/* https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true */

SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS Total FROM Hackers AS h
INNER JOIN Challenges AS c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING Total = (SELECT MAX(c1.count_c1) FROM (SELECT hacker_id, COUNT(challenge_id) AS count_c1 FROM Challenges GROUP BY hacker_id) AS c1)
    OR Total IN (SELECT c2.count_c2 FROM (SELECT COUNT(challenge_id) AS count_c2 FROM Challenges GROUP BY hacker_id) c2
    GROUP BY c2.count_c2 HAVING COUNT(c2.count_c2) = 1)
ORDER BY Total DESC, hacker_id;
    
  
