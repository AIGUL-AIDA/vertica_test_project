
    
    



select count(*) as validation_errors
from "docker"."dbt_schema"."cwurData"
where country is null


