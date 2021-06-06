select
	school_name,
	country 
from {{ ref('school_and_country_table') }}