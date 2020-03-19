with source as (

    select * from {{var('schema')}}.stargazers

),

renamed as (

    select

        _sdc_repository as _sdc_repository,
        started_at as started_at,
        user__id as user_id

    from source

)

select * from renamed
