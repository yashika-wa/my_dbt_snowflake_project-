SELECT 
    genre AS book_genre ,
    COUNT(name) AS total_books ,
    AVG(price) AS avg_price ,
    AVG(user_rating) AS avg_user_rating ,
    SUM(reviews) AS total_reviews 
FROM {{ ref ('stg_amazon_books') }}
GROUP BY genre 
ORDER BY total_reviews DESC 