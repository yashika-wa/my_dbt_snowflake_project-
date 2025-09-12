SELECT 
    name  ,
    author ,
    user_rating ,
    reviews ,
    price ,
    year ,
    genre 
FROM {{ source('amazon_books' , 'amazon_books' ) }}