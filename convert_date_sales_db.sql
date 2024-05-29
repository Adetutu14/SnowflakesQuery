create or replace TABLE ANALYTICS.PUBLIC.AIRLINE (
	ROUTE_ID VARCHAR(16777216),
	FLIGHT_ID VARCHAR(16777216),
	AIRCRAFT_ID FLOAT,
	DATE DATE,
	DEPARTURE_DELAY FLOAT,
	SCHEDULED_DEPARTURE VARCHAR(16777216),
	AVG_TICKET_PRICE FLOAT,
	TOTAL_FARE FLOAT,
	FLIGHT_MONTH FLOAT,
	FLIGHT_YEAR FLOAT
);

select *
from analytics.public.airline;


insert into analytics.public.airline
select route_id, flight_id, aircraft_id, DATEADD(day,date -2, '1900-01-01'::DATE), departure_delay, scheduled_departure, avg_ticket_price, total_fare, flight_month, flight_year
from analytics.public.flights;

select *
from analytics.public.airline;