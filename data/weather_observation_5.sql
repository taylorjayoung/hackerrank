/**Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:**/


/*
max and min city name lengths: 
select
    2 cities
    shortest and longest city names
    = shortest city
        name
        length
    = longest city 
        name
        length
    1
    name, length(city) as len (shortest_city )
    2
    name, length(city) as len (longest_city )
from station

where 

order 
    (If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.)
    len desc, city asc  
    
group

limit 1 

union

join


*/


--Solution:
(select city, length(city) as len 
from station
order by len desc, city asc 
limit 1 
)
union
(select city, length(city) as len 
from station
order by len asc, city asc
limit 1);


