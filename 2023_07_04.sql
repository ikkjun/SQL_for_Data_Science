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

select * from Accidents;


