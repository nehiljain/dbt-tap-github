with source as (

    select * from {{var('schema')}}.reviews

),

renamed as (

    select

        _sdc_repository as _sdc_repository,
        body as body,
        commit_id as commit_id,
        html_url as html_url,
        id as id,
        pull_request_url as pull_request_url,
        state as state,
        submitted_at as submitted_at,
        user__id as user_id,
        user__login as user_login

    from source

)

select * from renamed
