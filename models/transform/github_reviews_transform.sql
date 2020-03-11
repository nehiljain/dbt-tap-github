WITH reviews AS (

     SELECT *
     FROM {{ref('github_reviews')}}

)

SELECT * FROM reviews
