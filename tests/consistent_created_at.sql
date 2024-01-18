WITH r AS (
    SELECT
        *
    FROM
        {{ ref("fct_reviews") }}
),
l AS (
    SELECT
        *
    FROM
        {{ ref("dim_listings_cleansed") }}
)
SELECT
    *
FROM
    r
    LEFT JOIN l
    ON r.listing_id = l.listing_id
WHERE
    review_date < created_at
LIMIT
    10
