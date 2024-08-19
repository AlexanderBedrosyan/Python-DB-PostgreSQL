UPDATE products
SET price = price * 1.10
WHERE id IN (
    SELECT 
        product_id
    FROM 
        feedbacks
    WHERE 
        rate > 8
    );