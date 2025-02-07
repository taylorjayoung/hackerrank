with parents as (select distinct p from bst)
select n, 
    case
        when p is null then 'Root'
        when n in (select * from parents)and p is not null then 'Inner'
        else 'Leaf'
    end
from bst
ORDER BY n;






--alt: 
select 
    n, case 
    when p is null then "Root"
    when ( select count(*) from bst b2  where b1.n = b2.p) > 0 then "Inner"
    else "Leaf"
    end
from bst b1
order by n;