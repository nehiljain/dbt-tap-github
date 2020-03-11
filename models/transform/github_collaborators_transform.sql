WITH collaborators AS (

     SELECT *
     FROM {{ref('github_collaborators')}}

)

SELECT * FROM collaborators
