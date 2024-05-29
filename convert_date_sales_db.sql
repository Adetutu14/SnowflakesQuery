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