

-- 1. Average Price by Airline
SELECT airline_name, ROUND(AVG(ticket_price), 2) AS avg_price
FROM airlines
GROUP BY airline_name
ORDER BY avg_price DESC;

-- 2. Average Price by Route
SELECT source_city, destination_city, ROUND(AVG(ticket_price), 2) AS avg_price
FROM airlines
GROUP BY source_city, destination_city
ORDER BY avg_price DESC;

-- 3. Cheapest Flight per Airline
SELECT airline_name, MIN(ticket_price) AS cheapest_fare
FROM airlines
GROUP BY airline_name;

-- 4. Most Expensive Flight per Airline
SELECT airline_name, MAX(ticket_price) AS highest_fare
FROM airlines
GROUP BY airline_name;

-- 5. Average Duration by Route
SELECT source_city, destination_city, ROUND(AVG(flight_duration), 2) AS avg_duration
FROM airlines
GROUP BY source_city, destination_city
ORDER BY avg_duration DESC;

-- 6. Price Trends by Days Until Departure
SELECT days_until_departure, ROUND(AVG(ticket_price), 2) AS avg_price
FROM airlines
GROUP BY days_until_departure
ORDER BY days_until_departure;

-- 7. Popular Routes (Most Flights)
SELECT source_city, destination_city, COUNT(*) AS total_flights
FROM airlines
GROUP BY source_city, destination_city
ORDER BY total_flights DESC;

-- 8. Price Difference Between Economy & Business
SELECT travel_class, ROUND(AVG(ticket_price), 2) AS avg_price
FROM airlines
GROUP BY travel_class;

-- 9. Average Price by Number of Stops
SELECT number_of_stops, ROUND(AVG(ticket_price), 2) AS avg_price
FROM airlines
GROUP BY number_of_stops
ORDER BY avg_price DESC;

-- 10. Highest & Lowest Price Flights per Route
SELECT source_city, destination_city, MAX(ticket_price) AS max_price, MIN(ticket_price) AS min_price
FROM airlines
GROUP BY source_city, destination_city;

-- 11. Most Frequent Departure Times
SELECT departure_time, COUNT(*) AS total_flights
FROM airlines
GROUP BY departure_time
ORDER BY total_flights DESC;

-- 12. Most Frequent Arrival Times
SELECT arrival_time, COUNT(*) AS total_flights
FROM airlines
GROUP BY arrival_time
ORDER BY total_flights DESC;

-- 13. Price Distribution by Departure Time
SELECT departure_time, ROUND(AVG(ticket_price), 2) AS avg_price, MIN(ticket_price) AS min_price, MAX(ticket_price) AS max_price
FROM airlines
GROUP BY departure_time
ORDER BY avg_price DESC;

-- 14. Cheapest Flights with Short Duration
SELECT * FROM airlines
WHERE ticket_price < 3000 AND flight_duration < 2
ORDER BY ticket_price ASC;

-- 15. Longest Flights per Airline
SELECT airline_name, MAX(flight_duration) AS longest_flight
FROM airlines
GROUP BY airline_name
ORDER BY longest_flight DESC;

-- 16. Flights with Shortest Duration per Route
SELECT source_city, destination_city, MIN(flight_duration) AS shortest_duration
FROM airlines
GROUP BY source_city, destination_city
ORDER BY shortest_duration ASC;

-- 17. Average Price Increase for Business vs Economy by Route
SELECT source_city, destination_city,
       ROUND(AVG(CASE WHEN travel_class = 'economy' THEN ticket_price END), 2) AS avg_economy_price,
       ROUND(AVG(CASE WHEN travel_class = 'business' THEN ticket_price END), 2) AS avg_business_price,
       ROUND(
           AVG(CASE WHEN travel_class = 'business' THEN ticket_price END) -
           AVG(CASE WHEN travel_class = 'economy' THEN ticket_price END), 2
       ) AS price_difference
FROM airlines
GROUP BY source_city, destination_city;

-- 18. Most Competitive Routes (Multiple Airlines)
SELECT source_city, destination_city, COUNT(DISTINCT airline_name) AS num_airlines
FROM airlines
GROUP BY source_city, destination_city
ORDER BY num_airlines DESC;

-- 19. Airline Market Share by Number of Flights
SELECT airline_name, COUNT(*) AS total_flights,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM airlines), 2) AS market_share_percent
FROM airlines
GROUP BY airline_name
ORDER BY market_share_percent DESC;

-- 20. Price vs Stops Correlation
SELECT number_of_stops, ROUND(AVG(ticket_price), 2) AS avg_price, ROUND(AVG(flight_duration), 2) AS avg_duration
FROM airlines
GROUP BY number_of_stops
ORDER BY avg_price DESC;

-- 21. Cheapest Airline per Route
SELECT source_city, destination_city, airline_name, MIN(ticket_price) AS cheapest_fare
FROM airlines
GROUP BY source_city, destination_city, airline_name
ORDER BY cheapest_fare ASC;

-- 22. Price Fluctuation by Days Until Departure
SELECT days_until_departure, MAX(ticket_price) - MIN(ticket_price) AS price_range
FROM airlines
GROUP BY days_until_departure
ORDER BY price_range DESC;

-- 23. Flights under 2 Hours Sorted by Price
SELECT * FROM airlines
WHERE flight_duration < 2
ORDER BY ticket_price ASC;

-- 24. Average Ticket Price per Source City
SELECT source_city, ROUND(AVG(ticket_price), 2) AS avg_price
FROM airlines
GROUP BY source_city
ORDER BY avg_price DESC;
