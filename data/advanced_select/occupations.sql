select  
    MIN(IF(occupation='Doctor', name, null)) as Doctor, 
    MIN(IF(occupation='Professor', name, null)) as Professor,
    MIN(IF(occupation='Singer', name, null)) as Singer,
    MIN(IF(occupation='Actor', name, null)) as Actor
from (select 
    name, 
    occupation, 
    row_number() over( 
        partition by occupation
        order by name 
    )AS row_num
    from occupations
) as abc_names_by_occupation
group by row_num