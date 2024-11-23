/* 
584. Find customer referee 

Find the names of the customer that are not referred by the customer with id = 2.

Return the result table in any order.
*/

select name
from Customer
where referee_id != 2 or referee_id is NULL;

/*
595. Big Countries

A country is big if:

    it has an area of at least three million (i.e., 3000000 km2), or
    it has a population of at least twenty-five million (i.e., 25000000).

Write a solution to find the name, population, and area of the big countries.

Return the result table in any order.
*/

select name, population, area
from World
where 
area >= 3000000
or
population >= 25000000;

/*
1148. Article Views I

Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.

The result format is in the following example.
*/

select distinct author_id as id
from Views
where 
author_id = viewer_id
order by author_id asc;


/* 
1683. Invalid Tweets

Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Return the result table in any order.

The result format is in the following example.

 */

select tweet_id
from Tweets
where CHAR_LENGTH(content) > 15
;
