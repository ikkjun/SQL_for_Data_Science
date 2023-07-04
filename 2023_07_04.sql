SELECT 
사고유형대분류
,사고유형
,사고건수
,사망자수
,중상자수
from Accidents
where 사고유형 in('측면충돌', '횡단중');

SELECT 
사고유형대분류
,사고유형
,사고건수
,사망자수
,중상자수
from Accidents
where 사고유형대분류 in('차대사람', '차대차')
and 사고건수 >10000;

SELECT 
사고유형대분류
,사고유형
,사고건수
,사망자수
,중상자수
from Accidents
where 사고유형대분류 in('차대사람', '차대차')
and not 사고유형 = '기타';

select * 
from Accidents
WHERE 사고유형 LIKE '%충돌';

select * from Accidents
order by 사고건수 DESC;

select * from Accidents
order by 4 DESC;

select * 
from Accidents
order by 사고유형대분류, 사고유형중분류;

SELECT 
사고유형대분류
,사고유형중분류
,사고유형
,사망자수
,중상자수 + 경상자수 as 부상자수
FROM Accidents;

SELECT AVG(사고건수) as 
average_accidents 
FROM Accidents;

SELECT MAX(사고건수) as 최대사고건수,
MIN(사고건수) as 최사고건수
FROM Accidents;

SELECT DISTINCT 사고유형대분류 FROM Accidents;

SELECT COUNT(DISTINCT 사고유형대분류) FROM Accidents;

/* Every column in your SELECT statement must be present
in a GROUP BY clause, except for aggregated calculations*/

SELECT 
사고유형대분류
,SUM(사망자수) AS 총사망자수
FROM Accidents
GROUP BY 사고유형대분류;

# WHERE filters before data is grouped
# HAVING filters after data is grouped
SELECT 
사고유형대분류
,SUM(사망자수) AS 총사망자수
FROM Accidents
GROUP BY 사고유형대분류
HAVING SUM(사망자수) >= 10;

SELECT 
사고유형대분류
,SUM(사망자수) AS 총사망자수
FROM Accidents
GROUP BY 사고유형대분류
HAVING 총사망자수 >= 10;

SELECT 
사고유형대분류
,SUM(사망자수) AS 총사망자수
FROM Accidents
GROUP BY 사고유형대분류
HAVING SUM(사망자수) >= 10
ORDER BY 총사망자수 DESC;

SELECT * FROM Accidents;

