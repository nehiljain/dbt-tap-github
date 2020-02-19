WITH commits AS (

     SELECT *
     FROM {{ref('gitlab_commits')}}

)

SELECT * FROM commits
