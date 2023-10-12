-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;

SELECT id, app_name FROM analytics WHERE last_updated IN ('2018-08-01');

SELECT category, COUNT(category) FROM analytics GROUP BY category;

SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

SELECT app_name, rating FROM analytics WHERE rating >= 4.8;

SELECT category, AVG(rating) AS avg_rating
  FROM analytics GROUP BY category ORDER BY avg_rating DESC;

SELECT app_name, price, rating FROM analytics WHERE price = 
  (SELECT MAX(price) FROM analytics WHERE rating <= 3);

SELECT app_name, rating FROM analytics WHERE min_installs <= 50 
  GROUP BY app_name, rating 
  HAVING COUNT(rating) > 0 
  ORDER BY rating DESC;

SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

SELECT app_name FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;

SELECT app_name, last_updated FROM analytics WHERE last_updated = 
   (SELECT MIN(last_updated) FROM analytics);

SELECT app_name, price FROM analytics WHERE price = 
   (SELECT MAX(price) FROM analytics);

SELECT SUM(reviews) FROM analytics;

SELECT category, COUNT(category) FROM analytics GROUP BY category HAVING COUNT(category) > 300;

SELECT app_name reviews, min_installs, min_installs/review AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;