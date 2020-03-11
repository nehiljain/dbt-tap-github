WITH assignees AS (

     SELECT *
     FROM {{ref('github_assignees')}}

)

SELECT * FROM assignees
