select distinct city from station 
where regexp_like(city, '^[^aeiou].*[^aeiou]$', 'i');