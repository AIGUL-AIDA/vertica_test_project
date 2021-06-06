
    
    



select count(*) as validation_errors
from "docker"."dbt_schema"."school_and_country_table"
where country is null


