
  

  
  create or replace view "docker"."dbt_schema"."stg_school_and_country" as (
    select
	school_name,
	country 
from "docker"."dbt_schema"."school_and_country_table"
  );

