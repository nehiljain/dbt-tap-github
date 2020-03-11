WITH issues AS (

     SELECT *
     FROM {{ref('github_issues')}}

)

SELECT * FROM issues
