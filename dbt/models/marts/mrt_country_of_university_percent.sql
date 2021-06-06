select 
country, round(cnt/cnt_all * 100, 2) as per
FROM
(
SELECT country,
     count(distinct institution) as cnt          
from {{ ref('cwurData') }}
GROUP BY country) t1,
(select count(distinct institution) as cnt_all from {{ ref('cwurData') }}) t2
order by cnt desc