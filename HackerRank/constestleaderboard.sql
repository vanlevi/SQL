/* https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true&h_r=next-challenge&h_v=zen */

SELECT s.hacker_id, h.name, s.totalscore 
FROM (SELECT h.hacker_id, SUM(h.maxscore) AS totalscore 
      FROM (SELECT hacker_id, challenge_id, MAX(score) AS maxscore FROM Submissions GROUP BY hacker_id, challenge_id ORDER BY hacker_id, challenge_id) AS h
      GROUP BY h.hacker_id
      HAVING totalscore > 0) AS s
    LEFT JOIN Hackers AS h on s.hacker_id = h.hacker_id
ORDER BY s.totalscore DESC, s.hacker_id;

