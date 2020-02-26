WITH commits AS (

     SELECT *
     FROM {{ref('gitlab_issues')}}

)

SELECT * FROM commits
