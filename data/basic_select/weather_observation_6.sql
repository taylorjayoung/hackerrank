/**Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.**/

/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/


--solution 1
select city from station 
where 
    lower(city) like 'a%' or
    lower(city) like 'e%' or
    lower(city) like 'i%' or
    lower(city) like 'o%' or
    lower(city) like 'u%';
    

--most efficient solution
select city from station
where lower(substr(city, 1, 1))in ('a','e','i','o','u');

--alt regexp
select city from station where REGEXP_LIKE(city,'^[aeiou]', 'i');