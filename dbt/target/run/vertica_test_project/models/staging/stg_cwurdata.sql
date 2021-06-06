
  

  
  create or replace view "docker"."dbt_schema"."stg_cwurdata" as (
    select
  world_rank,
  institution,
  country,
  national_rank,
  quality_of_education,
  alumni_employment,
  quality_of_faculty,
  publications,
  influence,
  citations,
  broad_impact,
  patents,score,
  year
from "docker"."dbt_schema"."cwurData"
  );

