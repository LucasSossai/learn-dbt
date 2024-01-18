WITH raw_listings AS (
    SELECT
        *
    FROM
        airbnb.RAW.raw_listings
)
SELECT
    id AS listing_id,
    listing_url,
    NAME AS listing_name,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings
