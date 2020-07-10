with pull_requests as (

  select *
  from {{ ref('stg_github_pull_requests') }}


), date_spine AS (

  {{ dbt_utils.date_spine(
      start_date="to_date('11/01/2009', 'mm/dd/yyyy')",
      datepart="day",
      end_date="current_date + interval '40 year'"
     )
  }}

), date_details AS (

    SELECT  date_day,
            DATE_PART('month', date_day) AS month_actual,
            DATE_PART('year', date_day) AS year_actual,
            date_trunc('month', date_day) AS first_day_of_month
    FROM date_spine

), merged_pull_requests as (

  select
    *,
    {{ dbt_utils.date_trunc('day', 'merged_at') }} as merged_day,
    {{ dbt_utils.datediff(
        'created_at',
        'merged_at',
        'second'
        )
    }} / 60/60 as hours_to_merge

  from pull_requests
  right join date_details
  on {{ dbt_utils.date_trunc('day', 'merged_at') }}  = date_details.date_day

), num_prs_merged_cte as (

  select
    count(pr_id) as num_prs_merged,
    merged_day
  from merged_pull_requests
  group by merged_day

)

select *
from num_prs_merged_cte
