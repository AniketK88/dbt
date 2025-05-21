WITH 
f AS (
    SELECT * FROM
    AIRBNB.DEV.fct_reviews
),
lc AS (
    SELECT * FROM
    AIRBNB.DEV.dim_listings_cleansed
)

SELECT
l.*
FROM lc l
INNER JOIN f 
ON l.LISTING_ID = f.LISTING_ID
WHERE f.review_date < l.created_at