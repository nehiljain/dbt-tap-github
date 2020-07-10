with source as (

    select * from {{var('schema')}}.pull_requests

),

renamed as (

    select
        id as pr_id,
        _sdc_repository as repository_name,
        body as pr_body,
        closed_at as closed_at,
        created_at as created_at,
        labels as labels,
        url as pr_url,
        user__id as user_id,
        updated_at as updated_at,
        merged_at as merged_at,
        title as pr_title
    from source

)

select * from renamed
