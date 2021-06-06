
    
    



select count(*) as validation_errors
from "docker"."dbt_schema"."stg_cwurdata"
where institution is null


