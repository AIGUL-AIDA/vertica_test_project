
  

  
  create or replace view "docker"."dbt_schema"."mrt_country_of_university_percent" as (
    select 
country, round(cnt/cnt_all * 100, 2) as per
FROM
(
SELECT country,
     count(distinct institution) as cnt          
from "docker"."dbt_schema"."cwurData"
GROUP BY country) t1,
(select count(distinct institution) as cnt_all from "docker"."dbt_schema"."cwurData") t2
order by cnt desc
  );

