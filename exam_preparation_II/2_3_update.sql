UPDATE cars
SET condition = 'C'
WHERE (mileage >= 800000 OR mileage is NULL) AND year <= 2010 AND make NOT IN ('Mercedes-Benz');