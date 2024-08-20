SELECT 
    name,
    recipe,
    price
FROM
    products
WHERE
    price BETWEEN 10 and 20
ORDER BY 
    price desc;