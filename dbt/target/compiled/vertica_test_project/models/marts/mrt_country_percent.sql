select country, round(cnt/cnt_all * 100, 2) as per
from
(SELECT country,
     count(*) as cnt          
from "docker"."dbt_schema"."school_and_country_table"
GROUP BY country) t1,
(select count(*) as cnt_all from "docker"."dbt_schema"."school_and_country_table") t2
order by cnt desc