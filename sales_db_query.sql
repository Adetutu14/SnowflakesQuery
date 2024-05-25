select *
from sales_db.public.dim_product;

create or replace table analytics.public.products as
select product_id, product_code,category, product_name, price
from sales_db.public.dim_product;

select *
from analytics.public.products;

select *
from sales_db.public.airline;

/*when altering a table, it has to be in double column of the table to rename and also if in capital letter, put it it captial letter and then rename to small letter
*/

ALTER TABLE sales_db.public.airline RENAME COLUMN "ROUTEID" to route_id;
ALTER TABLE sales_db.public.airline RENAME COLUMN "FLIGHTID" to flight_id;

ALTER TABLE sales_db.public.airline RENAME COLUMN "AIRCRAFTID" to aircraft_id;
ALTER TABLE sales_db.public.airline RENAME COLUMN "DEPARTURE DELAY" to departure_delay;
ALTER TABLE sales_db.public.airline RENAME COLUMN "SCHEDULED DEPARTURE" to scheduled_departure;

ALTER TABLE sales_db.public.airline RENAME COLUMN "AVG TICKET PRICE" to avg_ticket_price;
ALTER TABLE sales_db.public.airline RENAME COLUMN "TOTAL FARE" to total_fare;
ALTER TABLE sales_db.public.airline RENAME COLUMN "FLIGHT MONTH" to flight_month;

ALTER TABLE sales_db.public.airline RENAME COLUMN "FLIGHT YEAR" to flight_year;

select *
from sales_db.public.airline;

create or replace table analytics.public.flights as
select route_id, flight_id, aircraft_id, date, departure_delay, scheduled_departure,avg_ticket_price, total_fare, flight_month, flight_year
from sales_db.public.airline;


select *
from analytics.public.flights;
