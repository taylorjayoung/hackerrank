--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select distinct city from station 
where 
    (
        lower(city) like '%a' or
        lower(city) like '%e' or
        lower(city) like '%i' or
        lower(city) like '%o' or
        lower(city) like '%u'
    ) 
    and 
    (    
        lower(city) like 'a%' or
        lower(city) like 'e%' or
        lower(city) like 'i%' or
        lower(city) like 'o%' or
        lower(city) like 'u%'
    );


--improved: 
select distinct city from station 
where regexp_like(city, '^[aeiou].+[aeiou]$', 'i');