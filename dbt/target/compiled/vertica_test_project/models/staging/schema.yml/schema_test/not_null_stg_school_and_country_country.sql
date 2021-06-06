
    
    



select count(*) as validation_errors
from "docker"."dbt_schema"."stg_school_and_country"
where country is null


