WITH commits AS (

     SELECT *
     FROM {{ref('github_issues')}}

)

SELECT * FROM commits
