DELETE FROM addresses
WHERE id % 2 = 0 AND street LIKE '%r%';