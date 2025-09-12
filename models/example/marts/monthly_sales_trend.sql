SELECT 
    year ,
    genre AS book_genre , 
    COUNT(name) AS total_books , 
    AVG(price) AS avg_price ,
    SUM(reviews) AS total_reviews 
FROM {{ ref ('stg_amazon_books') }}
GROUP BY year , genre 
ORDER BY year , total_reviews DESC 