-- 코드를 입력하세요
SELECT H1.HOUR, IFNULL(H2.COUNT, 0) AS COUNT
FROM (
    SELECT 0 AS HOUR
    UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION SELECT 16 UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20 UNION SELECT 21 UNION SELECT 22 UNION SELECT 23
) AS H1 LEFT JOIN (
    SELECT HOUR(DATETIME) AS HOUR, COUNT(HOUR(DATETIME)) AS COUNT
    FROM ANIMAL_OUTS
    GROUP BY HOUR(DATETIME)
) AS H2
ON H1.HOUR = H2.HOUR
ORDER BY H1.HOUR