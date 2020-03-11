WITH stargazers AS (

     SELECT *
     FROM {{ref('github_stargazers')}}

)

SELECT * FROM stargazers
