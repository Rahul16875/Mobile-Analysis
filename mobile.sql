create database mobile;
use mobile;
select * from mobile;

-- Chcek mobile features and price list

select phone_name, price from mobile;

-- Find out the price of 5 most expensive phones

select phone_name , price from mobile 
order by price desc limit 5 ;

-- Find out the price of 5 most Cheapest phones.
select phone_name , price from mobile 
order by price limit 5 ;


-- list of top 5 Samsung phones with price and all features
select * from mobile where Brands ='Samsung'
order by price desc limit 5;

-- Must have android phone list then top 5 High price android phones
select * from mobile where operating_system_type ='Android'
order by price desc limit 5;

-- Must have android phone list then top 5 lower price android phones
select * from mobile where operating_system_type ='Android'
order by price limit 5;


-- Must have IOS phone list then top 5 high price IOS phones
select * from mobile where operating_system_type ='IOS'
order by price desc limit 5;

-- Must have IOS phone list then top 5 lower price IOS phones
select * from mobile where operating_system_type ='IOS'
order by price limit 5;


-- Write a query which phone support 5g and also top 5 phone with 5g support

select * from mobile where 5G_Availability = 'YES'
order by price DESC limit 5;

-- total price of all mobiles is to be found with brand name

select Brands, sum(price) from mobile
group by Brands;







