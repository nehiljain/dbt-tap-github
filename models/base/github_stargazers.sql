with source as (

    select * from {{var('schema')}}.stargazers

),

renamed as (

    select

        _sdc_repository as _sdc_repository,
        starred_at as starred_at,
        user__id as user_id,
        user_id as user_id

    from source

)

select * from renamed
