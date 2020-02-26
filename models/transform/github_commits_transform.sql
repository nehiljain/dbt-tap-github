WITH commits AS (

     SELECT *
     FROM {{ref('github_commits')}}

)

SELECT * FROM commits
