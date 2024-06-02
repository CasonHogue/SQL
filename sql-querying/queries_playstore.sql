-- Comments in SQL Start with dash-dash --

select * from analytics;

select * from analytics
where id =1880

select id, app_name from analytics
where last_updated > '2020-01-01'

select category, count(*) from analytics
group by category

select * from analytics
order by reviews desc
limit 5

select * from analytics
where rating > 4.5
order by rating desc
limit 1

select category, avg(rating) from analytics
group by category
order by avg(rating) desc

select app_name, price, rating from analytics
where price < 3
order by rating desc
limit 1;

select * from analytics
where minimum_installs <= 50
and rating is not null
order by rating desc

select app_name from analytics
where rating < 3 and reviews > 10000

select * from analytics
where price BETWEEN .1 and 1
order by rating desc
limit 10

select * from analytics
where last_updated = (select min(last_updated) from analytics);

select * from analytics
order by price desc limit 1;

select sum(reviews) from analytics
group by category
having count(*) > 300;

select app_name, reviews, minimum_installs, min_installs / reviews as proportion
from analytics
where min_installs >= 100000
order by proportion desc
limit 1