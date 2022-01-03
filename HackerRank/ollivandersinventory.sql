/* https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true&h_r=next-challenge&h_v=zen */

SELECT w.id, wp.age, w2.min_coins, w2.power
FROM (SELECT code, power, min(coins_needed) AS min_coins 
FROM Wands Group By power,code) as w2 
LEFT JOIN Wands AS w ON w.coins_needed = w2.min_coins AND w.code = w2.code 
AND w.power = w2.power
LEFT JOIN Wands_Property AS wp ON w.code = wp.code 
WHERE wp.is_evil = 0
ORDER BY w2.power DESC, wp.age DESC;
